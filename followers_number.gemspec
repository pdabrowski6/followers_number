lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'followers_number/version'

Gem::Specification.new do |s|
  s.add_development_dependency 'rspec', '~> 3.7', '>= 3.7.0'
  s.add_runtime_dependency 'rest-client'
  s.add_runtime_dependency 'nokogiri'
  s.name        = 'followers_number'
  s.version     = FollowersNumber::Version
  s.date        = '2019-04-08'
  s.summary     = "Get the followers number for the given social media profile"
  s.description = "Get the followers number for the given social media profile"
  s.authors     = ["Paweł Dąbrowski"]
  s.email       = 'dziamber@gmail.com'
  s.files       = Dir['lib/**/*.rb', 'spec/helper.rb']
end
