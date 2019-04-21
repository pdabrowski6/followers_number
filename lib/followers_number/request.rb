module FollowersNumber
  class Request
    def self.get(profile_url)
      headers = {
        "Content-Language" => "en-US",
        "Accept-Language" => "en-US",
        "user-agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36",
        "Cookie" => ""
      }
      
      ::RestClient::Request.execute(method: :get, url: profile_url, headers: headers)
    end
  end
end
