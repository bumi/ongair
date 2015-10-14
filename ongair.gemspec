# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ongair/version'

Gem::Specification.new do |spec|
  spec.name          = "ongair"
  spec.version       = Ongair::VERSION
  spec.authors       = ["Michael Bumann", "Njirap"]
  spec.email         = ["michael@railslove.com", "njirap@gmail.com"]

  spec.summary       = %q{simple API wrapper around the ongair.im API}
  spec.description   = %q{This API wrapper allows you to interact with the ongair.im API to receive and to send messages. (currently whatsapp and wechat)}
  spec.homepage      = "https://github.com/bumi/ongair"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "activesupport", ">= 3.0"
  spec.add_dependency "virtus", "~> 1.0.0"
  spec.add_dependency "rest-client", "~> 1.8.0"
end
