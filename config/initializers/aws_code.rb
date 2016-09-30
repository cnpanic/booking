CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJI3QGQDGP7U477SA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'filetest111'        # required
  config.fog_public     = true # optional, defaults to true
end
