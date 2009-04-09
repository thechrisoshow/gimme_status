require 'rubygems'
require 'test/unit'
require "rack/test"
require "sinatra/test"
require '../gimme_status'

class GimmeStatusTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
    
  [404, 500, 200].each do |status|
    define_method("test_passing_#{status}") do
      get "/#{status}"
      assert_equal(status, last_response.status)
    end
  end
end