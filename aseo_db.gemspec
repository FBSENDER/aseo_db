# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aseo_db/version'

Gem::Specification.new do |spec|
  spec.name          = "aseo_db"
  spec.version       = AseoDb::VERSION
  spec.authors       = ["mengchen.liu"]
  spec.email         = ["mengchen.liu@corp.elong.com"]
  spec.summary       = %q{aseo db}
  spec.description   = %q{aseo db}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
