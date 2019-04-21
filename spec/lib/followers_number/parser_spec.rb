require 'spec_helper'

RSpec.describe FollowersNumber::Parser do
  describe '.call' do
    let(:response) { double(body: 'body') }

    it 'calls twitter parser for twitter profile' do
      expect(FollowersNumber::Parsers::Twitter).to receive(:parse)

      described_class.call('https://twitter.com/profile', response)
    end

    it 'calls instagram parser for instagram profile' do
      expect(FollowersNumber::Parsers::Instagram).to receive(:parse)

      described_class.call('https://instagram.com/profile', response)
    end
  end
end
