import 'dart:async';

import 'dart:convert';
import 'dart:io';


import 'package:nus_nextbus_api/src/models/BusStopApi.dart';
import 'package:nus_nextbus_api/src/models/BusStopsApi.dart';
import 'package:nus_nextbus_api/src/models/RouteApi.dart';
import 'package:nus_nextbus_api/src/models/ShuttlesApi.dart';
import 'package:nus_nextbus_api/src/parser/BusStopsParser.dart';
import 'package:nus_nextbus_api/src/parser/RouteParser.dart';
import 'package:nus_nextbus_api/src/parser/ShuttlesParser.dart';
import 'package:path/path.dart';

class API {

  final String METHOD_BUS_STOPS = "/BusStops";
  final String METHOD_SHUTTLE_SERVICE = "/Shuttleservice";
  final String METHOD_PICKUP_POINT = "/PickupPoint";

  final String PARAM_ROUTE_CODE = "route_code";
  final String PARAM_BUS_STOP_CODE = "busstopname";

  final String PROTO = "https://";
  final String HOST = "nextbus.comfortdelgro.com.sg";
  final String PATH = "/eventservice.svc";

  var _httpClient = new HttpClient();

  String _formatUrl(String method,[String params=""])
    => "${PROTO}${HOST}${PATH}${method}${params==null?"":"?"+params}";


  Future<Stream> _get(String url)async {
      var request = await _httpClient.getUrl(Uri.parse("${url}"));
      request.headers.set("Accept", "applicatipn/json");

      var response = await request.close();

      if (response.statusCode == HttpStatus.OK) {
          Stream jsonStream = response.transform(UTF8.decoder);
          return jsonStream;
      }

  }


  Future<BusStopsApi> getBusStop()async {

    Stream s = await _get(_formatUrl(METHOD_BUS_STOPS));
    Map jsonMap = JSON.decode(await s.join(""));
    return BusStopsParser.parse(jsonMap);
  }

  Future<RouteApi> getRoute(String serviceName)async {
    Stream s = await _get(_formatUrl(METHOD_PICKUP_POINT, "${PARAM_ROUTE_CODE}=${serviceName}"));
    Map jsonMap = JSON.decode(await s.join(""));
    return RouteParser.parse(serviceName, jsonMap);
  }

  Future<ShuttlesApi> getShuttleTimings(String busStopCode)async{
    Stream s = await _get(_formatUrl(METHOD_SHUTTLE_SERVICE, "${PARAM_BUS_STOP_CODE}=${busStopCode}"));
    Map jsonMap = JSON.decode(await s.join(""));
    print(jsonMap);
    return ShuttlesParser.parse(busStopCode, jsonMap);
  }
}