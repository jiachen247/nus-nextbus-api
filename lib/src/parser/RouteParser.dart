import 'package:nus_nextbus_api/src/models/RouteApi.dart';
import 'package:nus_nextbus_api/src/parser/RouteStopParser.dart';

class RouteParser{

    static bool _isEmptySet(List routeJson) => (routeJson == null);
    static RouteApi parse(String serviceName, Map json){

      RouteApi route = new RouteApi();

      route.serviceName = serviceName;

      List routeJson = json["PickupPointResult"]["pickuppoint"];

      if(_isEmptySet(routeJson)){
        print("[-] Empty set. Service name (${serviceName}) does not exist.");
        return route;
      }

      routeJson.forEach((routeStopJson) => route.routeStops.add(RouteStopParser.parse(routeStopJson)));

      print("[+] Route parsing success. length=${route.routeStops.length}");

      return route;
    }
}