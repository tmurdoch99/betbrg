OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1396580680606930', '92dda1fc163665768d5fca6c4f8a234b'
end

