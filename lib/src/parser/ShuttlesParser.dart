import 'package:nus_nextbus_api/src/models/ShuttlesApi.dart';
import 'package:nus_nextbus_api/src/parser/ShuttleParser.dart';

class ShuttlesParser{
  static ShuttlesApi parse(String busStopCode ,Map json){
    ShuttlesApi shuttles = new ShuttlesApi(busStopCode);
    String name = json["ShuttleServiceResult"]["name"];
    if(name == null ) {
      print("[-] Bus Stop (${busStopCode}) does not exist.");
      return shuttles;
    }

    // *** dart 2.0 problem | needs explicit casting
    List<Map> jsonShuttles =  new List<Map>.from(json["ShuttleServiceResult"]["shuttles"]);


    if(jsonShuttles == null || jsonShuttles.length == 0){
      print("[-] No buses currenlty operating from this bus stop.");
      return shuttles;
    }

    jsonShuttles.forEach((Map jsonShuttle)=>  shuttles.shuttles.add(ShuttleParser.parse(jsonShuttle)));

    print("[+] BusStops parsing success. length=${shuttles.shuttles.length}");




    return shuttles;
  }
}