import 'package:nus_nextbus_api/src/models/BusStopApi.dart';

class BusStopParser{
  static BusStopApi parse(Map json){
      return new BusStopApi(
          json["caption"],
          json["latitude"],
          json["longitude"],
          json["name"]
      );
  }
}