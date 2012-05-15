# -*- encoding: utf-8 -*-
require File.expand_path('../lib/meszaros/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bala Paranj"]
  gem.email         = ["bparanj@gmail.com"]
  gem.description   = %q{xUnit Test Patterns related utilities for RSpec}
  gem.summary       = %q{xUnit Test Patterns related utilities for RSpec}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "meszaros"
  gem.require_paths = ["lib"]
  gem.version       = Meszaros::VERSION
  
  gem.add_development_dependency "rspec"
end
