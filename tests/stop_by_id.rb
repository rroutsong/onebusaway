require '../lib/onebusaway'

bus = OneBusAway.new 'v1_rWTSjto73R8UJFg6OXGQ%2buSHWuM=cnhyb3V0c29uZ0BnbWFpbC5jb20='
puts 'stop_by_id'
puts bus.stop_by_id('1_10020')