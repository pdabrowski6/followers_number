module FollowersNumber
  module Parsers
    class Instagram
      def self.parse(html)
        raw_json = html.to_s.match(/window\._sharedData =.*(?=;)/)
        json = JSON.parse(raw_json.to_s.gsub("window._sharedData = ", ""))
        json["entry_data"]["ProfilePage"].first["graphql"]["user"]["edge_followed_by"]["count"]
      end
    end
  end
end
