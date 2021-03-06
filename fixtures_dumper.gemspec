# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fixtures_dumper/version'

Gem::Specification.new do |spec|
  spec.name          = "fixtures_dumper"
  spec.version       = FixturesDumper::VERSION
  spec.authors       = ["Prathamesh Sonpatki"]
  spec.email         = ["csonpatki@gmail.com"]
  spec.summary       = %q{Dump data to fixtures easily.}
  spec.description   = %q{Dump data to fixtures easily.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "> 3.2"

  spec.add_development_dependency "bundler", "~> 1.6.5"
  spec.add_development_dependency "rake", "~> 10.0"
end
