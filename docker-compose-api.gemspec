# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docker-compose/version'

Gem::Specification.new do |spec|
  spec.name          = "docker-compose-api"
  spec.version       = DockerCompose::VERSION
  spec.authors       = ["Mauricio S. Klein"]
  spec.email         = ["mauricio.klein.msk@gmail.com"]
  spec.summary       = %q{A simple ruby client for docker/docker-compose remote api.}
  spec.description   = %q{A simple ruby client for docker/docker-compose remote api.}
  spec.homepage      = "https://github.com/mauricioklein/docker-compose-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "docker-api", "~> 1.22.2"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end