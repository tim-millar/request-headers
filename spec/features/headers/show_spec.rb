require 'rails_helper'

describe 'show headers' do
  let(:headers) {
    {
      ipaddress: "127.0.0.1",
      language: "en-GB,en-US;q=0.8,en;q=0.6",
      software: "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36",
    }
  }
  it 'shows the headers from a browser request' do
    get '/'
    expect(response.body).to eql(headers)
  end
end
