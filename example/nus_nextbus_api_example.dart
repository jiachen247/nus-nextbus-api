import 'package:nus_nextbus_api/nus_nextbus_api.dart';
import 'package:nus_nextbus_api/src/models/BusStopsApi.dart';
import 'package:nus_nextbus_api/src/models/RouteApi.dart';
import 'package:nus_nextbus_api/src/models/ShuttlesApi.dart';

main() async {
  var awesome = new NusNextBusApi();


//  BusStopsApi s = await awesome.getBusStops();
//  print(s.busStops);


//RouteApi r = await awesome.getRoute("C1");
//print(r.routeStops);
//  BusStops stops = await awesome.getBusStops();
//  print(stops);

//    RouteApi route = await awesome.getRoute("A1");
//    print(route.routeStops);
//    print("==========");
//
//  route = await awesome.getRoute("A2");
//  print(route);
//  print("==========");
//
//  route = await awesome.getRoute("B");
//  print(route);
//  print("==========");
//
//  route = await awesome.getRoute("B1");
//  print(route);
//  print("==========");
//
//  route = await awesome.getRoute("B2");
//  print(route);
//  print("==========");route = await awesome.getRoute("C");
//  print(route);
//  print("==========");route = await awesome.getRoute("C1");
//  print(route);
//  print("==========");route = await awesome.getRoute("D1");
//  print(route);
//  print("==========");route = await awesome.getRoute("D2");
//  print(route);
//  print("==========");route = await awesome.getRoute("BTC");
//  print(route);
//  print("==========");

     ShuttlesApi shuttles = await awesome.getShuttleTimings("MUSEUM");
    print(shuttles.shuttles);




}
