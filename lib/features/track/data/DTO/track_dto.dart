import 'package:auto_time_tracker/core/extensions/string.dart';

class TrackDTO {
  TrackDTO({
    required this.appName,
    required this.startTime,
    this.finishTime,
  })  : assert(
          startTime.isUtc,
          'DateTime must be in UTC format',
        ),
        assert(
          finishTime == null || finishTime.isUtc,
          'DateTime must be in UTC format',
        ),
        assert(
          finishTime == null || startTime.isBefore(finishTime),
          'startTime must be before finishTime',
        );

  /// active app name
  final String appName;

  /// time in UTC-0
  final DateTime startTime;

  /// time in UTC-0
  final DateTime? finishTime;
}
