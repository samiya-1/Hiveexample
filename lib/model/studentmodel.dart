import 'package:hive_flutter/hive_flutter.dart';
 part 'studentmodel.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  String? name;
  @HiveField(1)
  int? age;
  @HiveField(2)
  String? place;

  StudentModel({this.name, this.age, this.place});
}
