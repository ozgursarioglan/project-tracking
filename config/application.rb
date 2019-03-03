require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProjectTracking
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.to_prepare do
      Devise::SessionsController.layout "user"
      Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application"   : "user" }
      Devise::ConfirmationsController.layout "user"
      Devise::UnlocksController.layout "user"            
      Devise::PasswordsController.layout "user"        
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
