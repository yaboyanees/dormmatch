OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '162602447243308', '97534b261f74abd9b86f30bd68017b5c', scope: "read_friendlists"
end