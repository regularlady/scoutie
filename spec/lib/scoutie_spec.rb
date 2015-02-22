require 'spec_helper'

describe Scoutie do

  it "returns a 200 status code when available" do
    status = get_status '/services/search/jobs/%s/results?output_mode=json&count=0'
    expect(status).to be(200)
  end

  it "throws exception if no protocol provided" do
    expect{get_status 'google.com'}.to raise_error(URI::InvalidURIError)
  end

end