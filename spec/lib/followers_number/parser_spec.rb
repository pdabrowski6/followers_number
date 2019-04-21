require 'spec_helper'

RSpec.describe FollowersNumber::Parser do
  describe '.call' do
    let(:profile_url) { 'https://twitter.com/profile' }
    let(:response) { double(body: 'body') }

    it 'calls twitter parser for twitter profile' do
      expect(FollowersNumber::Parsers::Twitter).to receive(:parse)

      described_class.call(profile_url, response)
    end
  end
end
