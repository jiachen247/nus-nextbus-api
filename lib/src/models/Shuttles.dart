import 'package:nus_nextbus_api/src/models/Shuttle.dart';

class Shuttles {

  String busStopCode = "" ;
  List<Shuttle> shuttles = [];

  Shuttles(this.busStopCode);

  @override
  String toString() => "!!! Shuttles Object. busstopcode=${busStopCode} | length=${shuttles.length}";






}