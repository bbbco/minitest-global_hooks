# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-global_hooks"
  spec.version       = VERSION
  spec.authors       = ["Brian Goad"]
  spec.email         = ["bgoad@reverbnation.com"]
  spec.description   = %q{Minitest Global Hooks for Setup/Teardown}
  spec.summary       = %q{Minitest Global Hooks for Setup/Teardown}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "minitest", ">= 5.0.0"
end
