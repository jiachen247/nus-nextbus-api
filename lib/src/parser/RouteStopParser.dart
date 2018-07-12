import 'package:nus_nextbus_api/src/models/RouteStop.dart';

class RouteStopParser {
  static RouteStop parse(Map json){
    
    return new RouteStop(
        json["pickupname"],
        json["routeid"],
        json["busstopcode"],
        json["lat"],
        json["long"]);
    
  }
}