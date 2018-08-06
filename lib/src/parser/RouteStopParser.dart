import 'package:nus_nextbus_api/src/models/RouteStopApi.dart';

class RouteStopParser {
  static RouteStopApi parse(Map json){
    
    return new RouteStopApi(
        json["pickupname"],
        json["routeid"],
        json["busstopcode"],
        json["lat"],
        json["long"]);
    
  }
}