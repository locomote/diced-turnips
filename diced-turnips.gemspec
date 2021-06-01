# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diced-turnips/version'

Gem::Specification.new do |spec|
  spec.name          = "diced-turnips"
  spec.version       = DicedTurnips::VERSION
  spec.authors       = ["John Carney"]
  spec.email         = ["john@carney.id.au"]

  spec.summary       = %q{Run your turnips in parallel.}
  spec.homepage      = "http://github.com/johncarney/diced-turnips"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir["{lib,bin}/**/*"] + %w[ README.md CODE_OF_CONDUCT.md LICENSE.txt ]
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.2"

  spec.add_runtime_dependency "parallel_tests"
  spec.add_runtime_dependency "rspec"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
