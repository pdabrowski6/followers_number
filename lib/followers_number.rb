require 'rest-client'
require 'nokogiri'
require 'json'

require_relative 'followers_number/parsers/twitter'
require_relative 'followers_number/parsers/instagram'
require_relative 'followers_number/parsers/youtube'

require_relative 'followers_number/request'
require_relative 'followers_number/validator'
require_relative 'followers_number/parser'

module FollowersNumber
  class << self
    def for(profile_url)
      ::FollowersNumber::Validator.validate!(profile_url)

      response = ::FollowersNumber::Request.get(profile_url)
      ::FollowersNumber::Parser.call(profile_url, response)
    end
  end
end
