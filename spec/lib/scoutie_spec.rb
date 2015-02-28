require 'spec_helper'

module Scoutie
  describe Status do
    describe "#get_status" do
      let(:status) { Status.new }

      it "returns a 200 status code when available" do
        s = status.get_status 'http://www.telize.com/geoip?callback=?'
        expect(s).to be(200)
      end

      it "returns a 401 status code when denied" do
        s = status.get_status 'https://www.yammer.com/api/v1/subscriptions/to_user/:id.json'
        expect(s).to be(401)
      end

      it "returns a 403 status code when denied" do
        s = status.get_status 'http://content.guardianapis.com/.json'
        expect(s).to be(403)
      end

      it "throws exception if no protocol provided" do
        expect{ status.get_status 'bananas!' }.to raise_error(URI::InvalidURIError)
      end
    end
  end
end
