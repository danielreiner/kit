CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIGZBXGPME7UHYCYQ',
    :aws_secret_access_key  => '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',
    :region                 => 'us-east-1'
  }
  config.fog_directory  = 'drprojectkit'
  # config.asset_host     = 'https://assets.example.com'
  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
end
