require 'net/http'
require 'json'

class OneBusAway
	def initialize
		@@key = 'YOUR_KEY'
		@@api = 'http://api.onebusaway.org/api/where'
	end

	def self.stopbyid id
		url		= "#{@@api}/stop/#{id}.json?key=#{@@key}"
		data	= Net::HTTP.get_response(URI.parse(url)).body

		JSON.parse(data)
	end

	def RouteById id
	end

	def StopByAddress address
	end

	def StopsForRoute route
	end

	def ArrivalsForStop stop
	end

	def DepartsForStop stop
	end
end


