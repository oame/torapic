if Rails.env.production?
  config.fog_credentials = {
    aws_access_key_id:     ENV["AWS_S3_KEY_ID"],
    aws_secret_access_key: ENV["AWS_S3_ACCESS_KEY"],
    provider:              'AWS',
    region:                'ap-northeast-1'
  }

  config.fog_directory = ENV["AWS_S3_BUCKET"]

  config.cache_dir = "#{Rails.root}/tmp/uploads"
else
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
end
