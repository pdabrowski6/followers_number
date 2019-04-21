module FollowersNumber
  module Parsers
    class Twitter
      def self.parse(html)
        node = html.at("li.ProfileNav-item--followers span.ProfileNav-value")
        node.nil? ? 0 : node["data-count"].to_i
      end
    end
  end
end
