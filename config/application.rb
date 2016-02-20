require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module TudorTutorApi
  class Application < Rails::Application
    config.api_only = true
    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :put, :delete, :options]
      end
    end


    config.active_record.raise_in_transactional_callbacks = true
  end
end
