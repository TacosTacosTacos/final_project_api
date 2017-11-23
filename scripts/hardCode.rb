# frozen_string_literal: true

require 'open-uri'
require 'json'

MAKEID=474
YEAR=2015


begin
response = open("https://vpic.nhtsa.dot.gov/api/vehicles/GetModelsForMakeIdYear/makeId/#{MAKEID}/modelyear/#{YEAR}?format=json")
rescue OpenURI::HTTPError => error
  response = error.io
  response_status = response.status
end

response_status = response.status
response_body = response.read

data_hash = JSON.parse(response_body)

puts(data_hash['Results'])
puts response_status[0]
