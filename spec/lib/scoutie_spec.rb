require 'spec_helper'

module Scoutie
  describe Status do
    describe "#get_status" do
      let(:status) { Status.new }

      it "returns a 200 status code when available" do
        s = status.get_status 'http://www.telize.com/geoip?callback=?'
        expect(s).to be(200)
      end

      it "returns a 403 status code when denied" do
        # This request is returning a 200. I don't have URL
        # that returns a 403.
        s = status.get_status 'http://lorem-ipsum.me/api/json'
        expect(s).to be(403)
      end

      it "returns a 403 status code when denied" do
        s = status.get_status 'http://content.guardianapis.com/.json'
        expect(s).to be(403)
      end

      it "throws exception if no protocol provided" do
        expect{ status.get_status 'bananas!' }.to raise_error(Errno::ECONNREFUSED)
      end
    end
  end
end
