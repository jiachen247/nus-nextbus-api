// TODO: Put public facing types in this file.

import 'dart:async';
import 'package:nus_nextbus_api/src/api/API.dart';
import 'package:nus_nextbus_api/src/models/BusStopsApi.dart';
import 'package:nus_nextbus_api/src/models/RouteApi.dart';
import 'package:nus_nextbus_api/src/models/ShuttlesApi.dart';

/// Checks if you are awesome. Spoiler: you are.
abstract class NusNextBusApiAbstract {

  Future<ShuttlesApi> getShuttleTimings(String busStopCode);
  Future<BusStopsApi> getBusStops();
  Future<RouteApi> getRoute(String serviceName);

}

class NusNextBusApi extends NusNextBusApiAbstract {

  API _api = new API();

  @override
  Future<BusStopsApi> getBusStops() => _api.getBusStop();

  @override
  Future<RouteApi> getRoute(String serviceName) => _api.getRoute(serviceName);

  @override
  Future<ShuttlesApi> getShuttleTimings(String busStopCode) => _api.getShuttleTimings(busStopCode);
}
