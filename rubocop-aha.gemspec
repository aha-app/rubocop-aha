# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop-aha/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-aha'
  spec.version       = RuboCop::Aha::VERSION
  spec.authors       = ['Zach Schneider']
  spec.email         = ['zach@aha.io']

  spec.summary       = 'Aha! rubocop config'
  spec.description   = 'Aha! rubocop config'
  spec.homepage      = 'https://github.com/aha-app/rubocop-aha'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rubocop', '>= 0.68.0'

  spec.add_dependency 'rubocop-rspec', '>= 1.25.1'
  spec.add_dependency 'rubocop-rspec-focused', '>= 1.0.0'
end
