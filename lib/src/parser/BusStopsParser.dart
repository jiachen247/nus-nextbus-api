import 'package:nus_nextbus_api/src/models/BusStopsApi.dart';
import 'package:nus_nextbus_api/src/parser/BusStopParser.dart';

class BusStopsParser{

    static BusStopsApi parse(Map json){

      BusStopsApi stops = new BusStopsApi();

      List busStopsJson = json["BusStopsResult"]["busstops"];

      busStopsJson.forEach((busStopJson) => stops.busStops.add(BusStopParser.parse(busStopJson)) );

      print("[+] BusStops parsing success. length=${stops.busStops.length}");

      return stops;

    }
}