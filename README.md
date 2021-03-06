rack-vhost
==========

Rack middleware to dispatch to an application via host header.

Install gem:

    gem install rack-vhost

or in Gemfile:

    source :rubygems
    gem 'rack-vhost'

Example config.ru:

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

    # This should come after all other middleware since it passes directly to the app
    use Rack::Vhost, :vhost => '^api', :app => APIApp.new
    use Rack::Vhost, :vhost => 'www.philcolabs.com', :app => MainApp.new
    run Router.new
