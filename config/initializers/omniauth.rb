Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '180851825267100', '05d6c61691c3cc85a21f6c4f9d7311ad'
end