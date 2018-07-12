class BusStop {
  String caption;
  double latitude;
  double longitude;
  String name;

  BusStop(this.caption, this.latitude, this.longitude, this.name); // uniq

  @override
  String toString() => "!!! BusStop Object; ${name} ${caption} ${latitude} ${longitude}";


}