require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'active_record/railtie'

Bundler.require(*Rails.groups)

module ActioncableExamples
  class Application < Rails::Application
    config.action_dispatch.default_headers = {
      'X-Frame-Options' => 'ALLOWALL'
    }
  end
end

Rails.application.secrets.each { |key, value| ENV[key.to_s.upcase] = value }
