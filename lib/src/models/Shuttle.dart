class Shuttle {

  String serviceName;
  String arrivalTime;
  String nextArrivalTime;

  Shuttle(this.serviceName, this.arrivalTime, this.nextArrivalTime);

  @override
  String toString()=> "!!! Shuttle Object. ${serviceName} ${arrivalTime} ${nextArrivalTime}";
}