
puts "Enter a city:"
city = gets.chomp

puts "Enter weather Celcius or Fahrenheit:"
units = gets.chomp
if units == "Celcius"
  units = "metric"
elsif units == "Fahrenheit"
  units = "imperial"
else
  puts "Enter Fahrenheit or Celcius"
end 

require 'http'

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")

puts "In #{city}"
puts "The lowest temp is #{response.parse(:json)["main"]["temp_min"]}"
puts "The highest temp is #{response.parse(:json)["main"]["temp_max"]}"
puts "The humidity is #{response.parse(:json)["main"]["humidity"]}"
puts "The windspeed is #{response.parse(:json)["wind"]["speed"]}"