Gem::Specification.new do |s|
  s.name                = 'rack-vhost'
  s.version             = '0.9.9'
  s.summary             = 'Rack middleware to dispatch to an application via host header'
  s.description         = 'Rack middleware to dispatch to an application via host header.'
  s.author              = 'Philip Reichenberger'
  s.email               = 'preichenberger@philcolabs.com'
  s.homepage            = 'http://github.com/preichen/rack-vhost'
  s.has_rdoc            =  false
  s.require_path        = 'lib'
  s.files               =  File.read('Manifest').strip.split('\n')

  s.add_development_dependency 'rack'
end
