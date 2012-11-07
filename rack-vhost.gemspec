Gem::Specification.new do |gem|
  gem.name         = 'rack-vhost'
  gem.version      = '0.1.2'
  gem.summary      = 'Rack middleware to dispatch to an application via host header'
  gem.description  = 'Rack middleware to dispatch to an application via host header.'
  gem.author       = 'Philip Reichenberger'
  gem.email        = 'preichenberger@philcolabs.com'
  gem.homepage     = 'http://github.com/preichen/rack-vhost'
  gem.has_rdoc     = false
  gem.require_path = 'lib'
  gem.files        = `git ls-files`.split($/)
  gem.executables  = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files   = gem.files.grep(%r{^(test|spec|features)/})

  gem.add_development_dependency 'rack'
end
