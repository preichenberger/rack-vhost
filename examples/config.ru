require 'rack/vhost'

class Router
  def call(env)
    'Router app'
  end
end

class APIApp
  def call(env)
    'API app'
  end
end

class MainApp
  def call(env)
    'Main app'
  end
end

use Rack::Vhost, :vhost => '/^api/', :app => APIApp.new
use Rack::Vhost, :vhost => '/www.philcolabs.com/', :app => MainApp.new
run Router
