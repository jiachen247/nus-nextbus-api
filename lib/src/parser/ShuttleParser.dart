import 'package:nus_nextbus_api/src/models/Shuttle.dart';

class ShuttleParser {
  static Shuttle parse(Map json){
    return new Shuttle(json["name"], json["arrivalTime"], json["nextArrivalTime"]);
  }
}