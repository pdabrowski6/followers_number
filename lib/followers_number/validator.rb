module FollowersNumber
  class Validator
    class InvalidProfileURL < StandardError; end

    NETWORKS = %w[twitter.com]

    def self.validate!(profile_url)
      unless NETWORKS.include?(URI.parse(profile_url.to_s.downcase).host)
        raise InvalidProfileURL, profile_url
      end

      true
    end
  end
end
