module Rack
  class Vhost
    def initialize(app, args)
      @app = app
      @sub_app = args[:app]
      @regex = args[:vhost]
    end 

    def call(env)
      if env['HTTP_HOST'] =~ @regex
        @sub_app.call(env)
      else
        @app.call(env)
      end
    end
  end
end
