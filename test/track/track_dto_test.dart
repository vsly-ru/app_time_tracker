import 'package:auto_time_tracker/core/mappable/dtos.dart';
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
        // act
        bool threwException = false;
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
        // act
        bool threwException = false;
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
    test(
      'Encoding DTO test',
      () {
        // arrange
        final dto = TrackDTO(
          appName: appName,
          startTime: startTime,
          finishTime: finishTime,
        );
        // act
        final encoded = Mapper.toValue(dto);
        // assert
        expect(encoded, encodedTest);
      },
    );
    test(
      'Decoding DTO test',
      () {
        // arrange
        final expectedDTO = TrackDTO(
          appName: appName,
          startTime: startTime,
          finishTime: finishTime,
        );
        // act
        final decoded = Mapper.fromValue<TrackDTO>(encodedTest);
        // assert
        expect(Mapper.isEqual(decoded, expectedDTO), isTrue);
        expect(decoded.appName, appName);
        expect(decoded.startTime, startTime);
        expect(decoded.finishTime, finishTime);
      },
    );
  });
}
