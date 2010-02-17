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

	def stops_by_latlong lat,lon
		url		= "#{@api}/stops-for-location.json?key#{@key}&lat=#{lat}&lon=#{lon}"
		data	= Net::HTTP.get_response(URI.parse(url)).body
		JSON.parse(data)
	end

	def routes_by_latlon lat,lon
		url		= "#{@api}/routes-for-location.json?key=#{@key}&lat=#{lat}&lon=#{lon}"
		data	= Net::HTTP.get_response(URI.parse(url)).body
		JSON.parse(data)
	end

	def stops_for_route route
		url		= "#{@api}/stops-for-route/#{route}.json?key=#{@key}"
		data	= Net::HTTP.get_response(URI.parse(url)).body
		JSON.parse(data)
	end

	def arvdep_for_stop stop
		url		= "#{@api}/arrivals-and-departures-for-stop/#{stop}.json?key=#{@@key}"
		data	= Net::HTTP.get_response(URI.parse(url)).body
		JSON.parse(data)
	end
end


