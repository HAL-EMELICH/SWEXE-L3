require_relative "boot"

require "rails"

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
# require "action_cable/engine" # この行がないか確認
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "active_storage/engine" 
#require "sprockets/railtie"
# require "rails/test_unit/railtie" # テストを必要としない場合

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App1
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.autoload_lib(ignore: %w[assets tasks])
    config.time_zone = 'Asia/Tokyo'
    config.active_record.default_timezone = :local
    config.active_record.yaml_column_permitted_classes = [Symbol, Date, Time, ActiveSupport::TimeZone, ActiveSupport::TimeWithZone, YAML::DisallowedClass]
    #config.i18n.default_locale = :ja
  end
end
