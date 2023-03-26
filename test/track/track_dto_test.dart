import 'package:auto_time_tracker/features/track/data/DTO/track_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const appName = 'test';
  final startTime = DateTime.parse('2022-11-15T14:23:32.133Z');
  final finishTime = DateTime.parse('2022-11-15T14:23:55.111Z');
  const encodedTest = 'test 2022-11-15T14:23:32.133Z 2022-11-15T14:23:55.111Z';
  group('TrackDTO', () {
    test(
      'Constructor test',
      () {
        // arrange
        // act
        final testDto = TrackDTO(
          appName: appName,
          startTime: startTime,
          finishTime: finishTime,
        );
        // assert
        expect(testDto.appName, appName);
        expect(testDto.startTime, startTime);
        expect(testDto.finishTime, finishTime);
      },
    );
    test(
      'Non-UTC startTime throws',
      () {
        // arrange
        bool threwException = false;
        // act
        try {
          TrackDTO(
            appName: appName,
            startTime: startTime.toLocal(),
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
      'Non-UTC finishTime throws',
      () {
        // arrange
        bool threwException = false;
        // act
        try {
          TrackDTO(
            appName: appName,
            startTime: startTime,
            finishTime: finishTime.toLocal(),
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
