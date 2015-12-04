ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/pride'

class ActiveSupport::TestCase
  fixtures :all
end

class ActionController::TestCase
  def json_response
    JSON.parse response.body
  end
end
