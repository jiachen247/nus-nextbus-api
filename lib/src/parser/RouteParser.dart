import 'package:nus_nextbus_api/src/models/Route.dart';
import 'package:nus_nextbus_api/src/parser/RouteStopParser.dart';

class RouteParser{

    static bool _isEmptySet(List routeJson) => (routeJson == null);
    static Route parse(String serviceName, Map json){

      Route route = new Route();

      route.serviceName = serviceName;

      List<Map> routeJson = json["PickupPointResult"]["pickuppoint"];

      if(_isEmptySet(routeJson)){
        print("[-] Empty set. Service name (${serviceName}) does not exist.");
        return route;
      }

      routeJson.forEach((Map routeStopJson) => route.routeStops.add(RouteStopParser.parse(routeStopJson)));

      print("[+] Route parsing success. length=${route.routeStops.length}");

      return route;
    }
}