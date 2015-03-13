CarrierWave.configure do |config|
  if Rails.env.test? || Rails.env.development?
    config.storage = :file
  else
    config.storage = :fog
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AWS_S3_KEY'],
      aws_secret_access_key: ENV['AWS_S3_SECRET'],
      region:                ENV['AWS_S3_REGION']
    }
    config.fog_directory  = ENV['AWS_S3_BUCKET']

    config.cache_dir = "#{Rails.root}/tmp/uploads/#{DateTime.now.to_f}.#{rand(999)}.#{rand(999)}"
  end
end
