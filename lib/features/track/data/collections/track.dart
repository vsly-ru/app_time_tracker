import 'package:isar/isar.dart';

part 'track.g.dart';

/// Track combines multiple records into single entity;
@Collection()
class Track {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String? appName;

  DateTime? start;
  DateTime? end;
}
