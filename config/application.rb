require File.expand_path("../boot", __FILE__)

require "rails/all"
require "lib/sass_on_heroku"

# Auto-require default libraries and those for the current Rails environment.
Bundler.require :default, Rails.env.to_sym

module ConvergeSE
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Add additional load paths for your own custom dirs
    # config.load_paths += %W( #{config.root}/extras )

    # Only load the plugins named here, in the order given (default is alphabetical).
    # :all can be used as a placeholder for all plugins not explicitly named
    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

    # Activate observers that should always be running
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
    # config.i18n.default_locale = :de

    # Configure generators values. Many other options are available, be sure to check the documentation.
    # config.generators do |g|
    #   g.orm             :active_record
    #   g.template_engine :erb
    #   g.test_framework  :test_unit, :fixture => true
    # end

    config.middleware.use(SassOnHeroku) if Rails.env == "production"

    config.session_store :cookie_store, :key => "convergese_session"
    config.cookie_secret = "0ah91h2roinf0hw08rvha0wh0 2hr0adoizshdv908hwa0ifna0w93hurf0asfoisdflaksnf908  2h3c08qhnwfv"

    config.generators do |g|
      g.template_engine :haml
      g.test_framework  :test_unit, :fixture => true
      g.fixture_replacement :factory_girl, :dir => "test/factories"
    end

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters << :password
  end
end
