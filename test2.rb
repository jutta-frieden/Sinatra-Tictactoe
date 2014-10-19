require './app'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_my_default
    get '/'
    assert_equal 'Hello there!', last_response.body
  end

  def test_with_params
    get '/tom'
    assert_equal 'Hello Tom!', last_response.body
  end

  def test_with_params
    get '/marvin'
    assert_equal 'Hello Marvin!', last_response.body
  end
end