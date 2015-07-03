# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metabroom/version'

Gem::Specification.new do |spec|
  spec.name          = "metabroom"
  spec.version       = Metabroom::VERSION
  spec.authors       = ["Johnneylee Jack Rollins"]
  spec.email         = ["Johnneylee.Rollins@gmail.com"]

  spec.summary       = %q{A new broom sweeps clean. Build extensible, modern, and open command line applications quickly and easily.}
  spec.description   = %q{A new broom sweeps clean. Build extensible, modern, and open command line applications quickly and easily.}
  spec.homepage      = "https://github.com/Spaceghost/metabroom"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
