OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram, ENV['INSTAGRAM_ID'], ENV['INSTAGRAM_SECRET'], scope:['basic']
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1066924482172-0n1h2rvtckk4dtouooll7talqgc41ab9.apps.googleusercontent.com', 'gRFmg5GAsT_Ll4NyT8lM0-yW', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end