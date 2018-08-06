import 'package:nus_nextbus_api/src/models/RouteStopApi.dart';

class RouteApi {

  String serviceName;
  List<RouteStopApi> routeStops = [];


  @override
  String toString() => "!!! BusStops Object | serviceName= ${serviceName} size=${routeStops.length}";
}