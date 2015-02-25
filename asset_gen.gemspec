# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asset_gen/version'

Gem::Specification.new do |spec|
  spec.name          = "asset_gen"
  spec.version       = AssetGen::VERSION
  spec.authors       = ["Jim Barnett"]
  spec.email         = ["james.barnett.jr@gmail.com"]
  spec.summary       = %q{A utility for generating placeholder assets}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
