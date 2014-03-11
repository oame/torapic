module Colourable
  extend ActiveSupport::Concern

  included do
    before_save :compute_colors
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
      @pixels = []
      image.each_pixel do |pixel, x, y|
        @pixels << Pixel.new_with_justify(pixel.red, pixel.green, pixel.blue)
      end
      super(@pixels)
    end

    def dominant_color
      grouped = @pixels.group_by { |pixel| pixel.join }
      @dominant_color ||= grouped.sort_by { |k, v| v.size }.last[1].first
    end

    def edge_color
      width = @image.columns
      height = @image.rows
      crop_top    = @image.crop(Magick::NorthWestGravity, 0, 0, width, 10).resize(30, 30)
      crop_right  = @image.crop(Magick::NorthEastGravity, 0, 0, 10, height).resize(30, 30).rotate!(90)
      crop_bottom = @image.crop(Magick::SouthWestGravity, 0, 0, width, 10).resize(30, 30)
      crop_left   = @image.crop(Magick::NorthEastGravity, 0, 0, 10, height).resize(30, 30).rotate!(90)
      merged = Magick::ImageList.new
      merged = merged.push(crop_top).push(crop_right).push(crop_bottom).push(crop_left).append(true)
      merged_pixels = Pixels.new(merged)
      @edge_color ||= merged_pixels.dominant_color
    end

    def most_far(source_pixel)
      response = @pixels.first
      current = 0

      @pixels.each do |pixel|
        distance = source_pixel.distance(pixel)
        if distance > current
          response = pixel
          current = distance
        end
      end
      return response
    end
  end

  def compute_colors
    source_image = Magick::ImageList.new(image.path)
    pixels = Pixels.new(source_image.resize(250, 250))
    color1 = pixels.edge_color
    color2 = pixels.most_far(color1)

    self.image_background_color = color1.to_hex
    self.image_text_color = color2.to_hex
  end
end
