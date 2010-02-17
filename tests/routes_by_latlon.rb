require '../lib/onebusaway'

bus = OneBusAway.new 'v1_rWTSjto73R8UJFg6OXGQ%2buSHWuM=cnhyb3V0c29uZ0BnbWFpbC5jb20='

puts 'routes_by_location w/o query and radius'
puts bus.routes_by_latlon('47.66839305008159','-122.2903633117675')

puts 'routes_by_location radius=50 w/o query'
puts bus.routes_by_latlon('47.66839305008159','-122.2903633117675',nil,'50')

puts 'routes_by_latlon radius=50 query'
puts bus.routes_by_latlon('47.66839305008159','-122.2903633117675','30',nil)