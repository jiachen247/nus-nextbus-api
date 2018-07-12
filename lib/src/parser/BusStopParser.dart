import 'package:nus_nextbus_api/src/models/BusStop.dart';

class BusStopParser{
  static BusStop parse(Map json){
      return new BusStop(
          json["caption"],
          json["latitude"],
          json["longitude"],
          json["name"]
      );
  }
}