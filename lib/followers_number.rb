require_relative 'followers_number/parsers/twitter'
require_relative 'followers_number/parsers/instagram'

require_relative 'followers_number/request'
require_relative 'followers_number/validator'
require_relative 'followers_number/parser'

require 'rest-client'
require 'nokogiri'

module FollowersNumber
  class << self
    def for(profile_url)
      ::FollowersNumber::Validator.validate!(profile_url)

      response = ::FollowersNumber::Request.get(profile_url)
      ::FollowersNumber::Parser.call(profile_url, response)
    end
  end
end
