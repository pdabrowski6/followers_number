module FollowersNumber
  module Parsers
    class Youtube
      def self.parse(html)
        html.css("span.subscribed").text.split("\xC2\xA0").join.to_i
      end
    end
  end
end
