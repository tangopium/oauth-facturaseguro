# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-facturaseguro/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andreas Eiselt"]
  gem.email         = ["andreas.eiselt@gmail.com"]
  gem.description   = %q{OmniAuth strategy for FacturaSeguro.}
  gem.summary       = %q{OmniAuth strategy for FacturaSeguro.}
  gem.homepage      = "https://github.com/tangopium/omniauth-facturaseguro"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-facturaseguro"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::FacturaSeguro::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  # Any newer version of oauth will break authorization
  # See: 	https://github.com/doorkeeper-gem/doorkeeper/issues/732
  #			https://github.com/intridea/omniauth-oauth2/issues/81
  gem.add_dependency 'omniauth-oauth2', '~> 1.3.1'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
