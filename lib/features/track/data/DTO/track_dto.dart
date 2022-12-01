import 'package:auto_time_tracker/core/extensions/String.dart';
import 'package:dart_mappable/dart_mappable.dart';

@MappableClass(
  caseStyle: CaseStyle.camelCase,
  hooks: TrackDTOHooks(),
)
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

class TrackDTOHooks extends MappingHooks {
  const TrackDTOHooks();

  /// переворачиваем вложение PromotionItem <-> item
  @override
  dynamic beforeDecode(dynamic value) {
    if (value is String) {
      // a string in format 'appName startDate finishDate'
      final values = value.split(' ');
      assert(
        values.length == 2 || values.length == 3,
        'should be of length 2 or 3',
      );
      Map<String, dynamic> decoded = {
        'appName': values[0],
        'startTime': values[1],
        'finishTime': values[2],
      };
      // decode
      return decoded;
    }
    return value;
  }

  @override
  dynamic afterEncode(dynamic value) {
    final map = value as Map<String, dynamic>;
    final appName = map['appName'] as String;
    return [
      appName.withNoSpaces,
      map['startTime'] ?? '',
      map['finishTime'] ?? '',
    ].join(' ');
  }
}
