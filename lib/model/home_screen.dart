enum BusLayoutType { twoByTwo, oneByThree }

class BusModel {
  String? busServiceName;
  String? busModelName;
  String? driverName;
  String? licenseNumber;
  int? numberOfSeats;
  BusLayoutType? busLayoutType;
  BusModel({
    required this.busServiceName,
    required this.busModelName,
    required this.driverName,
    required this.licenseNumber,
    required this.numberOfSeats,
    required this.busLayoutType,
  });
}
