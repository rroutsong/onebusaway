require '../lib/onebusaway'

bus = OneBusAway.new 'v1_rWTSjto73R8UJFg6OXGQ%2buSHWuM=cnhyb3V0c29uZ0BnbWFpbC5jb20='

puts 'stops_by_location w/o query and radius'
puts bus.stops_by_latlon('47.66839305008159','-122.2903633117675')

puts 'stops_by_location radius=50 w/o query'
puts bus.stops_by_latlon('47.66839305008159','-122.2903633117675',nil,'50')

puts 'stops_by_latlon query=30 w/o radius'
puts bus.stops_by_latlon('47.66839305008159','-122.2903633117675','65',nil)