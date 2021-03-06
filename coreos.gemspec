# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coreos/version'

Gem::Specification.new do |spec|
  spec.name          = "coreos-deploy"
  spec.version       = Coreos::VERSION
  spec.authors       = ["Oliver Letterer"]
  spec.email         = ["oliver.letterer@gmail.com"]
  spec.summary       = %q{Binary helper for deployments of docker services to coreos hosts.}
  spec.description   = %q{Binary that let's You deploy docker services to coreos hosts.}
  spec.homepage      = "https://github.com/Sparrow-Labs/coreos-deployment"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "thor", "~> 0.19"
  spec.add_dependency "net-ssh", "~> 2.9"
end
