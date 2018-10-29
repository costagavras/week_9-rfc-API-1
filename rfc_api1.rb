#in IRB

require 'httparty'

# Ex1
toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)
#toronto_wards_json["objects"][0]["name"]
toronto_wards_json["objects"].each do |object|
  puts object["name"]
end

# Ex2
federal_elections_response = HTTParty.get('https://represent.opennorth.ca/elections/')
federal_elections_json = JSON.parse(federal_elections_response.body)
federal_elections_json["objects"].each do |date|
  puts date["election_date"]
end
