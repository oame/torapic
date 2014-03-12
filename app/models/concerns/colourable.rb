module Colourable
  extend ActiveSupport::Concern

  included do
    before_save :invoke
  end

  class Pixel < Array
    def initialize(red, green, blue)
      @red ||= red
      @green ||= green
      @blue ||= blue
      super(self.to_a)
    end

    def self.new_with_justify(red, green, blue)
      new(justify_depth(red), justify_depth(green), justify_depth(blue))
    end

    def to_a
      [@red, @green, @blue]
    end

    def to_yuv
      y =  (0.257 * @red) + (0.504 * @green) + (0.098 * @blue) + 16
      v =  (0.439 * @red) - (0.368 * @green) - (0.071 * @blue) + 128
      u = -(0.148 * @red) - (0.291 * @green) + (0.439 * @blue) + 128
      return [y, u, v]
    end

    def to_hex
      res = ""
      [@red, @green, @blue].each do |component|
        hex = component.to_s(16)
        if component < 16
          res << "0#{hex}"
        else
          res << hex
        end
      end
      return "\##{res}"
    end

    def distance(color)
      c1yuv = to_yuv
      c2yuv = color.to_yuv
      Math.sqrt(c1yuv.zip(c2yuv).map { |x| (x[1] - x[0])**2 }.reduce(:+))
    end

    def brightness
      (0.2126*@red) + (0.7152*@green) + (0.0722*@blue)
    end

    def dark?
      brightness < 128
    end

    def light?
      brightness > 128
    end

    def darken(amount=0.4)
      r = (@red.to_i * amount).round
      g = (@green.to_i * amount).round
      b = (@blue.to_i * amount).round
      Pixel.new(r, g, b)
    end

    def lighten(amount=0.6)
      r = [(@red.to_i + 255 * amount).round, 255].min
      g = [(@green.to_i + 255 * amount).round, 255].min
      b = [(@blue.to_i + 255 * amount).round, 255].min
      Pixel.new(r, g, b)
    end

    private

    def self.justify_depth(number)
      case Magick::QuantumDepth
      when 8
        number
      when 16
        number / 257
      when 32
        number / 66049
      end
    end

  end

  class Pixels < Array
    def initialize(image)
      @image  = image

      pixels = []
      @image.each_pixel do |pixel, x, y|
        pixels << Pixel.new_with_justify(pixel.red, pixel.green, pixel.blue)
      end

      super(pixels)
      sort_color!
    end

    def sort_color
      grouped = self.group_by { |pixel| pixel }
      grouped.sort_by { |k, v| v.size }.reverse.map{|k, v| v.first}
    end

    def sort_color!
      _ = sort_color
      self.clear
      self.concat _
    end

    def dominant_color
      self.first
    end

    def edge_color
      width = @image.columns
      height = @image.rows
      crop_top    = @image.crop(Magick::NorthWestGravity, 0, 0, width, 10).resize(100, 100)
      crop_right  = @image.crop(Magick::NorthEastGravity, 0, 0, 10, height).resize(100, 100).rotate!(90)
      crop_bottom = @image.crop(Magick::SouthWestGravity, 0, 0, width, 10).resize(100, 100)
      crop_left   = @image.crop(Magick::NorthEastGravity, 0, 0, 10, height).resize(100, 100).rotate!(90)

      merged_image = Magick::ImageList.new
      merged_image = merged_image.push(crop_top).push(crop_right).push(crop_bottom).push(crop_left).append(true)
      merged_pixels = Pixels.new(merged_image)

      @edge_color ||= merged_pixels.dominant_color
    end
  end

  def most_far(source_pixels, target)
    response = source_pixels.first
    current = 0

    source_pixels.each do |pixel|
      distance = target.distance(pixel)
      if distance > current
        response = pixel
        current = distance
      end
    end
    return response
  end

  def far(source_pixels, target, minimum_distance=30)
    response = source_pixels.select do |pixel|
      distance = target.distance(pixel)
      distance > minimum_distance
    end

    return response.present? ? response.first : most_far(source_pixels, target)
  end

  def reduce(source_pixels, target, tolerance=2)
    source_pixels.reject do |pixel|
      dist = pixel.distance(target)
      dist < tolerance
    end
  end

  def invoke
    source_image = Magick::ImageList.new(image.path)
    pixels = Pixels.new(source_image.resize(250, 250))

    color1 = pixels.edge_color

    color2 = far(pixels, color1)
    pool_without_color2 = reduce(pixels, color2)

    color3 = pool_without_color2.first

    self.image_background_color = color1.to_hex
    self.image_text_color = color2.to_hex
    self.image_link_color = color3.to_hex
    self.image_shadow_color = color1.darken(0.8).to_hex
  end
end
