# -*- encoding: utf-8 -*-
require File.expand_path('../lib/lantus/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sam"]
  gem.email         = ["sam@cruft.co"]
  gem.description   = %q{Convenience wrapper around Time}
  gem.summary       = %q{Convenience wrapper around Time}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "lantus"
  gem.require_paths = ["lib"]
  gem.version       = Lantus::VERSION

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "cucumber"
end
