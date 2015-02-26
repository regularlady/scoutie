require 'spec_helper'

module Scoutie 
  describe Status do
    describe "#get_status" do
      let(:status) { Status.new.get_status }

      it "returns a 200 status code when available" do
        status = get_status 'http://www.telize.com/geoip\?callback\=\?'
        expect(status).to be(200)
      end

      it "returns a 403 status code when denied" do
        status = get_status 'http://lorem-ipsum.me/api/json'
        expect(status).to be(403)
      end

      it "returns a 404 status code when denied" do
        status = get_status 'http://content.guardianapis.com/.json'
        expect(status).to be(404)
      end

      it "throws exception if no protocol provided" do
        expect{get_status 'bananas!'}.to raise_error(URI::InvalidURIError)
      end
    end
  end
end