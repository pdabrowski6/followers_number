module FollowersNumber
  module Parsers
    class Facebook
      def self.parse(html)
        html.css("div._3xom").first.text.to_i
      end
    end
  end
end
