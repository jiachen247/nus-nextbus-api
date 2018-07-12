import 'package:nus_nextbus_api/src/models/RouteStop.dart';

class Route {

  String serviceName;
  List<RouteStop> routeStops = [];


  @override
  String toString() => "!!! BusStops Object | serviceName= ${serviceName} size=${routeStops.length}";
}