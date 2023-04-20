require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
 # config/application.rb
 

    config.x.copyright_holder = 'Copyright (c) 2023 Shanghai Moonton Technology Co., Ltd.'

    config.time_zone = "Tokyo"
    config.i18n.default_locale = :ja

  #inputタグに 「field_with_errors」 を自動挿入しないようにする
    # エラー時のレイアウト崩れを防ぐため
    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
