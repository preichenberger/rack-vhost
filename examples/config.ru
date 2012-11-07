require 'rack/vhost'

class Router
  def call(env)
    [200, { 'Content-Type' => 'text/plain' }, 'Router app']
  end
end

class APIApp
  def call(env)
    [200, { 'Content-Type' => 'text/plain' }, 'API app']
  end
end

class MainApp
  def call(env)
    [200, { 'Content-Type' => 'text/plain' }, 'Main app']
  end
end

use Rack::Vhost, :vhost => /^api/, :app => APIApp.new
use Rack::Vhost, :vhost => /www.philcolabs.com/, :app => MainApp.new
run Router.new
