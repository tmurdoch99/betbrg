CarrierWave.configure do |config| 
  config.fog_credentials = { 
    :provider               => 'AWS', 
    :aws_access_key_id      => 'AKIAINA6GWBBBG4NFEAQ', 
    :aws_secret_access_key  => '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 ', 
  } 
  config.fog_directory  = 'ziphire1' 
  config.fog_public     = false 
end 