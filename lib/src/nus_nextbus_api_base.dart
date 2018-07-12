// TODO: Put public facing types in this file.

import 'dart:async';
import 'package:nus_nextbus_api/src/api/API.dart';
import 'package:nus_nextbus_api/src/models/BusStops.dart';
import 'package:nus_nextbus_api/src/models/Route.dart';
import 'package:nus_nextbus_api/src/models/Shuttles.dart';

/// Checks if you are awesome. Spoiler: you are.
abstract class NusNextBusApiAbstract {

  Future<Shuttles> getShuttleTimings(String busStopCode);
  Future<BusStops> getBusStops();
  Future<Route> getRoute(String serviceName);

}

class NusNextBusApi extends NusNextBusApiAbstract {

  API _api = new API();

  @override
  Future<BusStops> getBusStops() => _api.getBusStop();

  @override
  Future<Route> getRoute(String serviceName) => _api.getRoute(serviceName);

  @override
  Future<Shuttles> getShuttleTimings(String busStopCode) => _api.getShuttleTimings(busStopCode);
}
