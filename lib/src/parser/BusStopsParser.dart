import 'package:nus_nextbus_api/src/models/BusStops.dart';
import 'package:nus_nextbus_api/src/parser/BusStopParser.dart';

class BusStopsParser{

    static BusStops parse(Map json){

      BusStops stops = new BusStops();

      List<Map> busStopsJson = json["BusStopsResult"]["busstops"];

      busStopsJson.forEach((Map busStopJson) => stops.busStops.add(BusStopParser.parse(busStopJson)) );

      print("[+] BusStops parsing success. length=${stops.busStops.length}");

      return stops;

    }
}