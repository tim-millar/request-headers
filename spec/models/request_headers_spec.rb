require 'rails_helper'

describe RequestHeaders do
  describe '#as_json' do
    subject(:request_headers) { RequestHeaders.new(request) }
    let(:request) { double('Request', ip: ipaddress, headers: headers) }
    let(:ipaddress) { '127.0.0.1' }
    let(:as_json) {
      {
        ipaddress: ipaddress,
        language: 'en-GB',
        software: 'X11; Linux x86_64',
      }
    }

    let(:user_agent) {
      'Mozilla/5.0 (X11; Linux x86_64)'\
      'AppleWebKit/537.36 (KHTML, like Gecko)'\
      'Chrome/54.0.2840.71 Safari/537.36'
    }

    let(:headers) {
      {
        'Accept-Language' => 'en-GB,en-US;q=0.8,en;q=0.6',
        'User-Agent' => user_agent,
      }
    }

    it 'returns a hash of the request headers' do
      expect(request_headers.as_json).to eql(as_json)
    end
  end
end
