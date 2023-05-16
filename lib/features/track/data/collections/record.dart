import 'package:isar/isar.dart';

part 'record.g.dart';

/// Record is a log entity about what app was active in a moment in time
@Collection()
class Record {
  Id id = Isar.autoIncrement;

  /// Active app name
  String? appName;

  /// Timestamp (ms since epoch, UTC)
  int? timestamp;

  /// Time since last record (ms);
  /// If the recording just started/resumed, it will be 0
  int? sinceLastRecord;
}
