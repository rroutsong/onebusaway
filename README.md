#OneBusAway Wrapper

So far only supports look up by stop id, will finish the remainder.

====================

#Calls

## *stop_by_id(STOP_ID)*
> require 'lib/onebusaway'
> onebusaway = OneBusAway.new 'YOUR_KEY'
> onebusaway.stop_by_id('1_10020')
> **{"text"=>"OK", "data"=>{"stop"=>{"id"=>"1_100...**

## *route_by_id(ROUTE_ID)*
> require 'lib/onebusaway'
> onebusaway = OneBusAway.new 'YOUR_KEY'
> onebusaway.route_by_id('1_30')
> **{"text"=>"OK", "data"=>{"route"=>{"id"=>"1_100...**

*More to come.*
