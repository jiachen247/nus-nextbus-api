import 'package:nus_nextbus_api/src/models/ShuttleApi.dart';

class ShuttleParser {
  static ShuttleApi parse(Map json){
    return new ShuttleApi(json["name"], json["arrivalTime"], json["nextArrivalTime"]);
  }
}