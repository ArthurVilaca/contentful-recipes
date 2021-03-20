ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

WebMock.disable_net_connect!(allow_localhost: true)

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end
