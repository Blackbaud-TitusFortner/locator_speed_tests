# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'speed_tests/version'

Gem::Specification.new do |spec|
  spec.name          = "speed_tests"
  spec.version       = SpeedTests::VERSION
  spec.authors       = ["Titus Fortner"]
  spec.email         = ["titus.fortner@blackbaud.com"]
  spec.summary       = %q{This runs speed tests for locators}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.0"
  spec.add_development_dependency 'headless'
end

