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

    case status
    when 200
      puts "It's 6"
    when 207
      puts "You passed a string"
    when 300
    when 400
    when 401
    when 403
    when 404
    when 409
    when 500
    when 503
    else
      puts "You gave me #{a} -- I have no idea what to do with that."
    end
  end
end
