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

    it 'calls youtube parser for youtube profile' do
      expect(FollowersNumber::Parsers::Youtube).to receive(:parse)

      described_class.call('https://youtube.com/profile', response)
    end

    it 'calls facebook parser for facebook profile' do
      expect(FollowersNumber::Parsers::Facebook).to receive(:parse)

      described_class.call('https://facebook.com/profile', response)
    end
  end
end
