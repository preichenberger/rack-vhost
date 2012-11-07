Gem::Specification.new do |s|
  s.name                = 'rack-vhost'
  s.version             = '0.1.0'
  s.summary             = 'Rack middleware to dispatch to an application via host header'
  s.description         = 'Rack middleware to dispatch to an application via host header.'
  s.author              = 'Philip Reichenberger'
  s.email               = 'preichenberger@philcolabs.com'
  s.homepage            = 'http://github.com/preichen/rack-vhost'
  s.has_rdoc            =  false
  s.require_path        = 'lib'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  s.add_development_dependency 'rack'
end
