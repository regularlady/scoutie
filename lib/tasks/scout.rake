require 'scoutie'

namespace :scoutie do

  task:texts => :environment do

  desc 'checks the HTTP status code of a JSON request'
  puts 'rake task runs!'
  url = 'http://www.telize.com/geoip\?callback\=\?'

  # will switch with inputted URL from rake task
  puts Status.get_status(url)
end

