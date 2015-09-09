require 'net/http'
require 'uri'

url = URI.parse('http://www.example.com/index.html')

req = Net::HTTP::Get.new(url.path)

# if use basic authentication
#req.basic_auth 'account', 'password'

res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}
puts res.body
