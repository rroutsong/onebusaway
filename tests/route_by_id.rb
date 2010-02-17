require '../lib/onebusaway'

bus = OneBusAway.new 'YOUR_KEY'
puts 'route_by_id'
puts bus.route_by_id('1_30')