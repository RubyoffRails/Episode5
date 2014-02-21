# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adventure_game/version'

Gem::Specification.new do |spec|
  spec.name          = "adventure_game"
  spec.version       = AdventureGame::VERSION
  spec.authors       = ["jason perez"]
  spec.email         = ["jperezish@gmail.com"]
  spec.description   = "A sample gem as one exercise from Ruby Off Rails."
  spec.summary       = "Sample gem for Adventure Game."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
