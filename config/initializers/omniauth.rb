OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'enJnsuHXfQhMnfDyoaDbAQ', 'pcKGarupkaEzguIxWG0IhcIRdsoE4XqXKlqxhdK0'
  provider :facebook, '135326703304736', 'f34356ba9740002d47ae111d22d9132a'
end