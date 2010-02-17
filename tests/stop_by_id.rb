require '../lib/onebusaway'

bus = OneBusAway.new 'YOUR_KEY'
puts 'stop_by_id'
puts bus.stop_by_id('1_10020')