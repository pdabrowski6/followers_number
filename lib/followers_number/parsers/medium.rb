module FollowersNumber
  module Parsers
    class Medium
      def self.parse(html)
        html.to_s.match(/followerCount":([0-9]*)/)[1]&.to_i
      end
    end
  end
end
