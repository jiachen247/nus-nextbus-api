# UNOFFICIAL API WRAPPER FOR NUS NEXTBUS 

Simple wrapper for nus next bus api.

## Usage

A simple usage example:

    import 'package:nus_nextbus_api/nus_nextbus_api.dart';

    main() {
      var nusNextBusApi = new NusNextBusApi();
    }


### ShuttleService
    
    String busStopCode = "YIH";
    Future<Shuttles> shuttles =  await nusNextBusApi.getShuttleTimings(busStopCode);
    
### BusStop

    Future<BusStops> stops = await nusNextBusApi.getBusStops();
    
### PickupPoint
    
    String serviceName = "A1";
    Future<Route> route = await nusNextBusApi.getRoute(serviceName);

#
