require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OverrideMe
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # DEPRECATION WARNING: Leaving `ActiveRecord::ConnectionAdapters::SQLite3Adapter.represent_boolean_as_integer` set
    # to false is deprecated. SQLite databases have used 't' and 'f' to serialize boolean values and must have old data
    # converted to 1 and 0 (its native boolean serialization) before setting this flag to true.
    config.active_record.sqlite3.represent_boolean_as_integer = true
  end
end
