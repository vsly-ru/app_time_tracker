import 'package:auto_time_tracker/features/track/domain/entities/track_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const appName = 'test';
  final start = DateTime.parse('2022-11-15T14:23:32.133Z');
  final end = DateTime.parse('2022-11-15T14:23:55.111Z');
  const encodedTest = 'test 2022-11-15T14:23:32.133Z 2022-11-15T14:23:55.111Z';
  group('TrackDTO', () {
    test(
      'Constructor test',
      () {
        // arrange
        // act
        final testTrack = TrackEntity(
          appName: appName,
          start: start,
          end: end,
        );
        // assert
        expect(testTrack.appName, appName);
        expect(testTrack.start, start);
        expect(testTrack.end, end);
      },
    );
    test(
      'Non-UTC start throws',
      () {
        // arrange
        bool threwException = false;
        // act
        try {
          TrackEntity(
            appName: appName,
            start: start.toLocal(),
            end: start.toLocal(),
          );
        } catch (err) {
          expect(err, isA<AssertionError>());
          threwException = true;
        } finally {
          expect(threwException, true);
        }
        // assert
      },
    );
    test(
      'Non-UTC end throws',
      () {
        // arrange
        bool threwException = false;
        // act
        try {
          TrackEntity(
            appName: appName,
            start: start,
            end: end.toLocal(),
          );
        } catch (err) {
          expect(err, isA<AssertionError>());
          threwException = true;
        } finally {
          expect(threwException, true);
        }
        // assert
      },
    );
  });
}
