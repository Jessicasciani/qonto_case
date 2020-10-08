require "rails_helper"

describe "Fetch prismic api", :type => :request do
  it 'fetch results from prismic API' do
    client = PrismicCall.new
    response = client.call_api
    expect(response.fragments.size).to be > 0
  end
end
