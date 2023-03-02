import 'dart:ffi';

class Hospital {
  int? id;
  String? name;
  List<Doctor>? doctors;
  String? location;

  Hospital({required this.id, required this.name, required this.doctors, required this.location});
}
class Doctor{
  String? name;
  String? specialty;
  Date? appointment;
}
class Date {
  int? day;
  Array? availableHour;
}