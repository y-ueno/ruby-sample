require 'net/https' # notice the change to https

uri = URI 'https://www.google.com/'

http = Net::HTTP.new(uri.host, 443) # hardcoded for forced SSL
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

req = Net::HTTP::Get.new(uri.path) # or any other request you might like
resp = http.request(req)
resp.body
