# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scoutie/version'

Gem::Specification.new do |spec|
  spec.name          = "scoutie"
  spec.version       = Scoutie::VERSION
  spec.authors       = ["Brittany Martin"]
  spec.email         = ["brittany.jill.martin@gmail.com"]
  spec.summary       = %q{Easy to use rake task to check JSON API calls}
  spec.description   = %q{Easy to use rake task to check JSON API calls}
  spec.homepage      = "https://github.com/Brit200313/scoutie"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
