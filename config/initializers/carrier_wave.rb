CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.production?
    config.storage    = :aws
    config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
    config.aws_acl    = 'private'

    config.aws_credentials = {
      access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
      secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
      region:            ENV.fetch('AWS_REGION'),
      stub_responses:    Rails.env.test? # Optional, avoid hitting S3 actual during tests
    }
  else
    config.storage = :file
    config.enable_processing = Rails.env.development?
  end
end
