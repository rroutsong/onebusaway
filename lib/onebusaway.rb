require 'net/http'
require 'json'

class OneBusAway
	def initialize key
		@key = key
		@api = 'http://api.onebusaway.org/api/where'
	end

	def stop_by_id id
		url		= "#{@api}/stop/#{id}.json?key=#{@key}"
		data	= Net::HTTP.get_response(URI.parse(url)).body
		JSON.parse(data)
	end

	def route_by_id id
		url		= "#{@api}/route/#{id}.json?key=#{@key}"
		data	= Net::HTTP.get_response(URI.parse(url)).body
		JSON.parse(data)
	end

	def stopsbylatlong lat,lon
		url		= "#{@api}/stops-for-location.json?key#{@key}&lat=#{lat}&lon=#{lon}"
		data	= Net::HTTP.get_response(URI.parse(url)).body
		JSON.parse(data)
	end

	def routesbylatlon lat,lon
		url		= "#{@api}/routes-for-location.json?key=#{@key}&lat=#{lat}&lon=#{lon}"
		data	= Net::HTTP.get_response(URI.parse(url)).body
		JSON.parse(data)
	end

	def stopsforroute route
		url		= "#{@api}/stops-for-route/#{route}.json?key=#{@key}"
		data	= Net::HTTP.get_response(URI.parse(url)).body
		JSON.parse(data)
	end

	def arvdepforstop route
		url		= "#{@api}/arrivals-and-departures-for-stop/#{route}.json?key=#{@@key}"
		data	= Net::HTTP.get_response(URI.parse(url)).body
		JSON.parse(data)
	end
end


