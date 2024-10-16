GMAPS_KEY = "AIzaSyDKz4Y3bvrTsWpPRNn9ab55OkmcwZxLOHI"
PIRATE_WEATHER_KEY = "3RrQrvLmiUayQ84JSxL8D2aXw99yRKlx1N4qFDUE"
require "http"
require "json"

#User Location 
pp "Where are you?"
#Get and Store User Location
# user_location = gets.chomp

user_location = "Chicago"
pp "Loading #{user_location} and its coordinates and weather!"
#Lat and Long of Google Maps API
gmaps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{user_location}&key=#{GMAPS_KEY}"
gmaps_data = HTTP.get(gmaps_url).to_s
pp parsed_gmaps_data = JSON.parse(gmaps_data)
results_array = parsed_gmaps_data.fetch("results")
first_result_hash = results_array.at(0)
geometry_hash = first_result_hash.fetch("geometry")
location_hash = geometry_hash.fetch("location")
latitude = location_hash.fetch("lat")
longitude = location_hash.fetch("lng")
pp "Your current coordinates are #{latitude} and #{longitude}"

#Coordinates from Pirate Weather API



#Display Current Temp. and Summary of Weather for Next Hour
pp "It is #{current_temp} degrees farenheit and the weather for the next hour is "
