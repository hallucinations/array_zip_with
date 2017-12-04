# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'array_zip_with/version'

Gem::Specification.new do |spec|
  spec.name          = 'array_zip_with'
  spec.version       = ArrayZipWith::VERSION
  spec.authors       = ['Vasanth Balakrishnan']
  spec.email         = ['vasantheb@gmail.com']
  spec.summary       = "Array#zip_with inspired by Haskell's zipWith."
  spec.description   = <<-eof
    Array#zip_with inspired by Haskell's zipWith function.It takes either
    yields a zipped array to a block or reduces the zipped array with the
    given operator.
  eof
  spec.homepage      = 'https://github.com/hallucinations/array_zip_with'
  spec.license       = 'MIT'
  spec.files         = Dir[
    'Rakefile',
    '{bin,lib,man,test,spec}/**/*',
    'README',
    'LICENSE*'
  ] & `git ls-files -z`.split("\0")
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'yard', '~> 0.9.12'
  spec.add_development_dependency 'rubocop', '~> 0.51.0'
end
