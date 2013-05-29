# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'conversys/version'

Gem::Specification.new do |s|
  s.name          = "conversys"
  s.version       = Conversys::VERSION
  s.authors       = ["Derek Watson"]
  s.email         = ["derek@twg.ca"]
  s.homepage      = "http://github.com/twg/conversys-ruby"
  s.summary       = "Ruby client for the Conversys HTTP API"
  s.description   = "Wrapping faraday requests/response objects"
  
  s.files         = `git ls-files`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  
  s.add_dependency 'faraday'
  s.add_dependency 'faraday_middleware'
  s.add_dependency 'multi_xml'
  s.add_dependency 'rash'
  
end