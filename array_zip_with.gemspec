# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'array_zip_with/version'

Gem::Specification.new do |spec|
  spec.name          = "array_zip_with"
  spec.version       = ArrayZipWith::VERSION
  spec.authors       = ["Vasanth Balakrishnan"]
  spec.email         = ["vasantheb@gmail.com"]
  spec.summary       = %q{Array#zip_with inspired by Haskell's zipWith.}
  spec.description   = %q{Array#zip_with inspired by Haskell's zipWith function. It takes either yields a zipped array to a block or reduces the zipped array with the given operator.}
  spec.homepage      = "https://github.com/hallucinations/array_zip_with"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
