# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods_src.rb'

Gem::Specification.new do |spec|
  spec.name          = "cocoapods-src"
  spec.version       = CocoapodsSrc::VERSION
  spec.authors       = ["Naoto Kaneko"]
  spec.email         = ["naoty.k@gmail.com"]
  spec.description   = %q{A short description of cocoapods-src.}
  spec.summary       = %q{A longer description of cocoapods-src.}
  spec.homepage      = "https://github.com/EXAMPLE/cocoapods-src"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
