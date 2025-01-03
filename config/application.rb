# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MarketplaceApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.generators do |generator|
      generator.test_framework :rspec, fixture: true
      generator.fixture_replacement :factory_bot, dir: 'spec/factories'
      generator.view_specs false
      generator.helper_specs false
      generator.stylesheets = false
      generator.JavaScript = false
      generator.helper = false
    end
    config.eager_load_paths << Rails.root.join('lib')
    config.api_only =true
  end
end
