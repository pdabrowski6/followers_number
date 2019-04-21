require 'spec_helper'

RSpec.describe FollowersNumber do
  describe '.for' do
    let(:profile_url) { 'https://domain.com/profile' }
    let(:response) { double('response') }

    before do
      allow(FollowersNumber::Validator).to receive(:validate!)
        .with(profile_url)
      allow(FollowersNumber::Request).to receive(:get)
        .with(profile_url).and_return(response)
      allow(FollowersNumber::Parser).to receive(:call)
        .with(profile_url, response).and_return(100)
    end

    it 'returns followers number' do
      expect(described_class.for(profile_url)).to eq(100)
    end
  end
end
