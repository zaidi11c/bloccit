# Adding Amazon S3 to Carrierwave
CarrierWave.configure do |config| 
  config.fog_credentials = { 
    :provider               => 'AWS', 
    :aws_access_key_id      => ENV['AKIAISZYLEJXCP2SYJFA'], 
    :aws_secret_access_key  => ENV['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'] 
  } 
  config.fog_directory  = ENV['zaidi11c-development']
  config.fog_public     = false 
end 

# Ref:
# https://support.cloud.engineyard.com/entries/20996881-Use-CarrierWave-and-Optionally-Fog-to-Upload-and-Store-Files#update3
# http://stackoverflow.com/questions/7946819/carrierwave-and-amazon-s3