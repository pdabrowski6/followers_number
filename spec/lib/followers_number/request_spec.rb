require 'spec_helper'

RSpec.describe FollowersNumber::Request do
  describe '.get' do
    it 'returns request response' do
      response = double('response')
      url = 'https://domain.com'
      allow(RestClient).to receive(:get).with(url).and_return(response)

      expect(described_class.get(url)).to eq(response)
    end
  end
end
