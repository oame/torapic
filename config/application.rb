require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Torapic
  class Application < Rails::Application
    # Timezone
    config.time_zone = 'Tokyo'

    # Language
    I18n.enforce_available_locales = false
    config.i18n.default_locale = :ja

    # Load lib
    config.autoload_paths << "#{config.root}/lib"
  end
end
