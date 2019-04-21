module FollowersNumber
  class Request
    def self.get(profile_url)
      ::RestClient.get(profile_url)
    end
  end
end
