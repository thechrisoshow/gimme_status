require '../gimme_status'
require 'test/unit'
require "rack/test"


class GimmeStatusTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
    
  [404, 500, 200].each do |status|
    define_method("test_get_#{status}") do
      get "/#{status}"
      assert_equal(status, last_response.status)
    end
    
    define_method("test_post_#{status}") do
      post "/#{status}"
      assert_equal(status, last_response.status)
    end
    
  end
end
