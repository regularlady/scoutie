require 'scoutie'

desc 'checks the HTTP status code of a JSON request'  
task :scoutie, :url do |t, args|
  url = args[:url] || 'http://www.telize.com/geoip?callback=?'
  s = Scoutie::Status.new.get_status(url)
end




