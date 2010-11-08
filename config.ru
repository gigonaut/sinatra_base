require 'rubygems'
require 'sinatra'
require 'omniauth'

# omniauth wow isn't this cool!
use Rack::Session::Cookie # OmniAuth requires sessions.  
use OmniAuth::Builder do  
  provider :twitter, 'owfk8Covtx4BRNdrwVdfA', 'KI4waAG47gJr39fKAKuq8uSg8enVGq7W6WXcDp7tc'
end

# gigo library
require './lib/sinatra/gigonaut'

# main app
require 'main'


run Sinatra::Application