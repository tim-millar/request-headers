require 'rails_helper'

describe 'show headers', type: :request do
  it 'shows the headers from a browser request' do
    get '/'

    expect(response.content_type.to_s).to eql('application/json')
    expect(response.body).to include('ipaddress')
    expect(response.body).to include('language')
    expect(response.body).to include('software')
  end
end
