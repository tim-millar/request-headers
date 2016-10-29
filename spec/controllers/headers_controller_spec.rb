require 'rails_helper'

describe HeadersController do
  describe 'GET show' do
    let(:request_headers) { double('RequestHeaders', as_json: as_json) }
    let(:as_json) {
      {
        ipaddress: '127.0.0.1',
        language: 'en-GB',
        software: 'X11; Linux x86_64',
      }
    }

    before do
      allow(RequestHeaders).to receive(:new).with(request).
        and_return(request_headers)
    end

    it 'returns the headers for a request' do
      get :show
      expect(response.body).to eql(JSON.generate(as_json))
    end
  end
end
