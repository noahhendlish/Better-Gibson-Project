#Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
#end
## OmniAuth.config.logger = Rails.logger
# Rails.application.config.middleware.use OmniAuth::Builder do
#provider :facebook, '526757521176220', '526757521176220'
# App ID: 526757521176220
# App Secret: 2594912ffdd9281d63bc2ce0a26b10da
# in your omniauth.rb initializer you type exactly:
#Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_ID']
#end
#OmniAuth.config.logger = Rails.logger
#Rails.application.config.middleware.use OmniAuth::Builder do
# provider :facebook, Rails.application.secrets.facebook_app_id,
# Rails.application.secrets.facebook_app_secret, scope: 'public_profile', info_fields: 'id,name,email'
#Rails.application.secrets.facebook_app_secret, scope: 'public_profile'

#end