#OneBusAway Wrapper

So far only supports look up by stop id, will finish the remainder.

#Calls

## *stop_by_id(STOP_ID)*
> onebusaway.stop_by_id('1_10020')

> **{"text"=>"OK", "data"=>{"stop"=>{"id"=>"1_100...**

## *route_by_id(ROUTE_ID)*
> onebusaway.route_by_id('1_30')

> **{"text"=>"OK", "data"=>{"route"=>{"id"=>"1_3...**

## *stops_by_latlong(LATITUDE,LONGITUDE,QUERY,RADIUS)*
### Latitude {required}, Longitude {required}, Query {optional}(ROUTE_SHORT_NAME), Radius {optional}(RADIUS_DISTANTCE)
> onebusaway.stops_by_latlong('47.66839305008159','-122.29036331176758')

> **{"text"=>"OK", "data"=>{"stops"=>{"id"=>"1_100...**

## *routes_by_latlong(LATITUDE,LONGITUDE,QUERY,RADIUS)*
### Latitude {required}, Longitude {required}, Query {optional}(ROUTE_SHORT_NAME), Radius {optional}(RADIUS_DISTANTCE)
> onebusaway.routes_by_latlong('47.66839305008159','-122.29036331176758')

> **{"text"=>"OK", "data"=>{"route"=>{"id"=>"1_100...**

## *stops_for_route(ROUTE_ID)*
> onebusaway.stops_for_route('1_30')

> **{"text"=>"OK", "data"=>{"route"=>{"id"=>"1_3...**

## *arvdep_for_stop(STOP_ID)*
> onebusaway.arvdep_for_stop('1_10020')

> **{"text"=>"OK", "data"=>{"route"=>{"id"=>"1_100...**

# Resources

http://code.google.com/p/onebusaway/wiki/OneBusAwayApiReference
