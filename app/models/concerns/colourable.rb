module Colourable
  extend ActiveSupport::Concern

  included do
    before_save :compute_colors
  end

  def justify_depth(number)
    case Magick::QuantumDepth
    when 8
      number
    when 16
      number / 257
    when 32
      number / 66049
    end
  end

  def collect_pixels(image)
    arr = []
    image.each_pixel do |pixel, x, y|
      arr << [justify_depth(pixel.red), justify_depth(pixel.green), justify_depth(pixel.blue)]
    end
    return arr
  end

  def to_yuv(r, g, b)
    y =  (0.257 * r) + (0.504 * g) + (0.098 * b) + 16
    v =  (0.439 * r) - (0.368 * g) - (0.071 * b) + 128
    u = -(0.148 * r) - (0.291 * g) + (0.439 * b) + 128
    return [y, u, v]
  end

  def to_hex(rgb)
    res = ""
    rgb.each do |component|
      hex = component.to_s(16)
      if component < 16
        res << "0#{hex}"
      else
        res << hex
      end
    end
    return "\##{res}"
  end

  def color_distance(c1, c2)
    c1yuv = to_yuv(*c1)
    c2yuv = to_yuv(*c2)
    Math.sqrt(c1yuv.zip(c2yuv).map { |x| (x[1] - x[0])**2 }.reduce(:+))
  end

  def dominant_color(image)
    pixels = collect_pixels(image)
    grouped = pixels.group_by { |pixel| pixel.join }
    dominant_color = grouped.sort_by { |k, v| v.size }.last[1].first
    return dominant_color
  end

  def edge_color(image)
    width = image.columns
    height = image.rows
    crop_top    = image.crop(Magick::NorthWestGravity, 0, 0, width, 10).resize(30, 30)
    crop_right  = image.crop(Magick::NorthEastGravity, 0, 0, 10, height).resize(30, 30).rotate!(90)
    crop_bottom = image.crop(Magick::SouthWestGravity, 0, 0, width, 10).resize(30, 30)
    crop_left   = image.crop(Magick::NorthEastGravity, 0, 0, 10, height).resize(30, 30).rotate!(90)
    merged = Magick::ImageList.new
    merged = merged.push(crop_top).push(crop_right).push(crop_bottom).push(crop_left).append(true)
    edge_color = dominant_color(merged)
    return edge_color
  end

  def most_far(colors, source_color)
    most_far_color = colors.first
    current_distance = 0
    colors.each do |color|
      distance = color_distance(color, source_color)
      if distance > current_distance
        most_far_color = color
        current_distance = distance
      end
    end
    return most_far_color
  end

  def compute_colors
    src = Magick::ImageList.new(image.path)
    image_pixels = collect_pixels(src.resize(250, 250))
    color1 = edge_color(src)
    color2 = most_far(image_pixels, color1)

    self.image_background_color = to_hex(color1)
    self.image_text_color = to_hex(color2)
  end
end
