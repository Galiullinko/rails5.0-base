require File.expand_path("../boot", __FILE__)

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rails50Base
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.load_path += Dir[Rails.root.join("config", "locales", "**", "*.{rb,yml}")]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Enable deflate / gzip compression of controller-generated responses
    config.middleware.use Rack::Deflater

    # Set default From address for all Mailers
    config.action_mailer.default_options = { from: ENV.fetch("MAILER_SENDER_ADDRESS") }

    # Set URL options to be able to use url_for helpers
    config.action_mailer.default_url_options = { host: ENV.fetch("HOST") }
  end
end
