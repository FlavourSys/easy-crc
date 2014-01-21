$:.unshift File.expand_path('../lib', __FILE__)
require 'easy-crc/version'

Gem::Specification.new do |s|
  s.name          = 'easy-crc'
  s.version       = EasyCRC::VERSION
  s.license       = 'MIT'
  s.summary       = 'GIL-free CRC32 checksums of files'
  s.description   = 'EasyCRC let\'s you calculate CRC32 checksums of files without locking the whole Ruby process'

  s.authors       = ['FlavourSys Technology GmbH']
  s.email         = 'technology@flavoursys.com'
  s.homepage      = 'http://github.com/flavoursys/easy-crc'

  s.extensions    = ['ext/easy_crc/extconf.rb']
  s.require_paths = ['lib']
  s.files         = Dir.glob('lib/**/*.rb') + Dir.glob('ext/**/*')

  s.add_development_dependency 'rake-compiler'
  s.add_development_dependency 'rspec'
end
