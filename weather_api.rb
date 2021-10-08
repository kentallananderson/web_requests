require 'http'

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=chicago&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=metric")

pp response.parse(:json)["main"]["temp"]