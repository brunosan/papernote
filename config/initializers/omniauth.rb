Rails.application.config.middleware.use OmniAuth::Builder do
#app id, app secret
  provider :facebook, '180851825267100', '05d6c61691c3cc85a21f6c4f9d7311ad' if Rails.env.development?
  provider :facebook, '129558937105012', 'a1d677ac418af76d1d86e571c6047d38' if Rails.env.production?
  
  end
end