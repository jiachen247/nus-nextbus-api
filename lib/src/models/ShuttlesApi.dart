import 'package:nus_nextbus_api/src/models/ShuttleApi.dart';

class ShuttlesApi {

  String busStopCode = "" ;
  List<ShuttleApi> shuttles = [];

  ShuttlesApi(this.busStopCode);

  @override
  String toString() => "!!! Shuttles Object. busstopcode=${busStopCode} | length=${shuttles.length}";






}