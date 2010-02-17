require '../lib/onebusaway'

bus = OneBusAway.new 'YOUR_KEY'

puts bus.stops_for_route('1_30')