require 'spec_helper'

RSpec.describe FollowersNumber::Request do
  describe '.get' do
    let(:headers) do
      {
        "Content-Language" => "en-US",
        "Accept-Language" => "en-US",
        "user-agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36",
        "Cookie" => ""
      }
    end

    it 'returns request response' do
      response = double('response')
      url = 'https://domain.com'
      allow(RestClient::Request).to receive(:execute)
        .with(method: :get, url: url, headers: headers)
        .and_return(response)

      expect(described_class.get(url)).to eq(response)
    end
  end
end
