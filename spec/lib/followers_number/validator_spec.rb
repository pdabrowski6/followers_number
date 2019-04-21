require 'spec_helper'

RSpec.describe FollowersNumber::Validator do
  describe '.validate!' do
    it 'returns true when twitter URL is given' do
      expect(
        described_class.validate!('https://twitter.com/profile')
      ).to eq(true)
    end

    it 'raises InvalidProfileURL when profile URL is not supported' do
      expect {
        described_class.validate!('https://domain.com')
      }.to raise_error(FollowersNumber::Validator::InvalidProfileURL, 'https://domain.com')
    end
  end
end
