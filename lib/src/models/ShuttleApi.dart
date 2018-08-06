class ShuttleApi {

  String serviceName;
  String arrivalTime;
  String nextArrivalTime;

  ShuttleApi(this.serviceName, this.arrivalTime, this.nextArrivalTime);

  @override
  String toString()=> "!!! Shuttle Object. ${serviceName} ${arrivalTime} ${nextArrivalTime}";
}