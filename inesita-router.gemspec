Gem::Specification.new do |s|
  s.name        = 'inesita-router'
  s.version     = '0.2.0'
  s.authors     = ['Michał Kalbarczyk']
  s.email       = 'fazibear@gmail.com'
  s.homepage    = 'http://github.com/inesita-rb/inesia-router'
  s.summary     = 'Router component for Inesita'
  s.description = s.summary
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency 'inesita', '~> 0.7.0'

  s.add_development_dependency 'bundler', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'opal-rspec', '~> 0.6.0'
  s.add_development_dependency 'rake', '~> 12.0'
end
