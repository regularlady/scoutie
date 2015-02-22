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
      puts "Sweet! You're golden to use that API."
    when 207
      puts "Yikes! You sent a destructive operation (POST, PUT, DELETE) against more than one resource and the operations against each indiviudal resource did not share a common outcome."
    when 300 OR 301
      puts "Not ideal, would be better if the response was a 200."
    when 400
      puts "Hold up. You're sending a malformed request to the API or the request cannot be validated."
    when 401
      puts "Nice try! Someone is missing an authorization token."
    when 403
      puts "Hate to be vague but this means you're doing something the API is not happy with. Better investigate."
    when 404
      puts "This means that the resource you wanted to manipulate could not be found."
    when 409
      puts "Your request is syntactically correct but violates a business rule. Better take a closer look."
    when 500
      puts "This is embarrassing. This indicates a technical failure inside the API."
    when 503
      puts "Busy busy busy! The API is too busy to accept your request, or if your access to the API has been temporarily suspended due to overuse."
    else
      puts "Your request returned #{a} -- Scoutie has no idea what to do with that."
    end
  end
end
