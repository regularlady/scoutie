require "scoutie/version"
require 'httparty'

begin
  require "pry"
rescue LoadError
end

module Scoutie
  def get_status(url)
    response = HTTParty.get(url, :verify => false)
    status = response.code
  end
end
