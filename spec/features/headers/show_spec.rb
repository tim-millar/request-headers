require 'rails_helper'

describe 'show headers', type: :request do
  it 'shows the headers from a browser request' do
    get '/', request

    expect(response.body).to include('ipaddress')
    expect(response.body).to include('language')
    expect(response.body).to include('software')
  end
end
