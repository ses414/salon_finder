OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram, ENV['INSTAGRAM_ID'], ENV['INSTAGRAM_SECRET'], scope:['basic']
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_ID'], ENV['GOOGLE_SECRET'], {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end