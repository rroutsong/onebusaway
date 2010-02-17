require '../lib/onebusaway'

bus = OneBusAway.new 'YOUR_KEY'

puts bus.arvdep_for_stop('1_10020')