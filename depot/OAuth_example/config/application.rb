require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Depot
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded
    config.active_record.raise_in_transactional_callbacks = true

    config.middleware.use OmniAuth::Builder do
      provider :developer if Rails.env.development?
      provider :github, 'd8edb46d50a1d6c45520', '1910e69e572aa8d87faf49dbe5850d135bbe8edb'
    end
  end
end
