class RouteStop {

  String stopName;
  int routeId;
  String busStopCode;
  double latitude;
  double longitude;

  RouteStop(this.stopName, this.routeId, this.busStopCode, this.latitude,
      this.longitude);

  @override
  String toString() => "!!! RouteStop object. ${stopName} ${routeId} ${busStopCode} ${latitude} ${longitude}";

}