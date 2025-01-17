require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
 	  config.i18n.default_locale = :ja
  	config.time_zone = 'Tokyo'
  	config.active_record.default_timezone = :local
    config.to_prepare do
    Devise::SessionsController.layout "app2"
    Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application" : "app2" }
    Devise::ConfirmationsController.layout "app2"
    Devise::UnlocksController.layout "app2"            
    Devise::PasswordsController.layout "app2"        
  end
  
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end


end
