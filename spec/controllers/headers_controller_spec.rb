require 'rails_helper'

describe HeadersController do
  describe 'GET show' do
    let(:request_headers) {
      {
        ipaddress: "127.0.0.1",
        language: "en-GB,en-US;q=0.8,en;q=0.6",
        software: "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36",
      }
    }

    it 'returns the headers for a request' do
      get :show
      expect(response.body).to eql(request_headers)
    end
  end
end
