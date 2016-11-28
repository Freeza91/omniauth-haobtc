# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/haobtc/version'

Gem::Specification.new do |spec|

  spec.name          = "omniauth-haobtc"
  spec.version       = Omniauth::Haobtc::VERSION
  spec.authors       = ["freez91"]
  spec.email         = ["useyes91@gmail.com"]

  spec.summary       = %q{OmniAuth strategies for haobtc}
  spec.description   = %q{OmniAuth strategies for haobtc}
  spec.homepage      = "https://github.com/Freeza91/omniauth-haobtc"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.0'

end
