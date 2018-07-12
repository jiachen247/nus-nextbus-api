import 'package:nus_nextbus_api/nus_nextbus_api.dart';
import 'package:nus_nextbus_api/src/models/BusStops.dart';
import 'package:nus_nextbus_api/src/models/Route.dart';
import 'package:nus_nextbus_api/src/models/Shuttles.dart';

main() async {
  var awesome = new NusNextBusApi();
//  BusStops stops = await awesome.getBusStops();
//  print(stops);

//    Route route = await awesome.getRoute("A1");
//    print(route);
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

    Shuttles shuttles = await awesome.getShuttleTimings("UHALL");
    print(shuttles);



}
