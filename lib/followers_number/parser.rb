module FollowersNumber
  class Parser
    MAPPING = {
      'twitter.com' => FollowersNumber::Parsers::Twitter,
      'instagram.com' => FollowersNumber::Parsers::Instagram,
      'youtube.com' => FollowersNumber::Parsers::Youtube,
      'facebook.com' => FollowersNumber::Parsers::Facebook,
      'medium.com' => FollowersNumber::Parsers::Medium
    }

    def self.call(profile_url, response)
      html = ::Nokogiri::HTML(response.body)
      mapper = MAPPING[URI.parse(profile_url).host]

      mapper.parse(html)
    end
  end
end
