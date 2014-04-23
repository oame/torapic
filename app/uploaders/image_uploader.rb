class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_fit: [320, 800]
  end

  version :medium do
    process resize_to_limit: [1920, 8000]
  end
end
