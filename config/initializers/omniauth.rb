OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'enJnsuHXfQhMnfDyoaDbAQ', 'pcKGarupkaEzguIxWG0IhcIRdsoE4XqXKlqxhdK0'
end