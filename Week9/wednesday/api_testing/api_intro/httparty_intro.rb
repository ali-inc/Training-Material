require 'httparty'

response = HTTParty.get('http://google.com')

pp response.headers
