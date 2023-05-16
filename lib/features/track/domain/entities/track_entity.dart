import 'package:auto_time_tracker/core/extensions/string.dart';

class TrackEntity {
  TrackEntity({
    required this.appName,
    required this.start,
    required this.end,
  })  : assert(
          start.isUtc,
          'DateTime must be in UTC format',
        ),
        assert(
          end.isUtc,
          'DateTime must be in UTC format',
        ),
        assert(
          start.isBefore(end) || start.isAtSameMomentAs(end),
          'start must come before the end (or at the same time)',
        );

  /// active app name
  final String appName;

  /// time in UTC-0
  final DateTime start;

  /// time in UTC-0
  final DateTime end;
}
