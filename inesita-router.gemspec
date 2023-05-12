Gem::Specification.new do |s|
  s.name        = 'inesita-router'
  s.version     = '0.4.0.pre.2'
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

  s.add_dependency 'inesita', '~> 1.0.pre'

  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'opal-rspec', '~> 1.0'
  s.add_development_dependency 'rake', '~> 12.0'
end
