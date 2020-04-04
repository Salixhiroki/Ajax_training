require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myajaxpro
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    
    # 外部からのこのデータは怪しくないよを示すためにエラーとして出されたIPアドレスを示しておく
    # Cannot render console from 58.89.116.53! Allowed networks: 127.0.0.1とログに書かれている場合は以下のように示す
    config.web_console.whitelisted_ips =  '58.89.116.53'
    
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
