CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     '',                        # required
    aws_secret_access_key: '',                        # required
    region:                'ap-northeast-2',                  # optional, defaults
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'filetest111'        # required
  config.fog_public     = true # optional, defaults to true
end
