import 'package:tarsier_logger/tarsier_logger.dart';
import 'package:test/test.dart';

void main() {
  group('TarsierLogger', () {
    final logger = TarsierLogger(maxLength: 50);

    test('Logs a plain message', () {
      expect(() => logger.l('Plain Message'), returnsNormally);
    });

    test('Logs an info message', () {
      expect(() => logger.i('Info Message'), returnsNormally);
    });

    test('Logs a success message', () {
      expect(() => logger.s('Success Message'), returnsNormally);
    });

    test('Logs a warning message', () {
      expect(() => logger.w('Warning Message'), returnsNormally);
    });

    test('Logs an error message', () {
      expect(() => logger.e('Error Message'), returnsNormally);
    });
  });

  group('TarsierLogger with static function call: ', () {
    test('log', () {
      expect(() => TarsierLogger.log('Plain Message'), returnsNormally);
    });

    test('info', () {
      expect(() => TarsierLogger.info('Info Message'), returnsNormally);
    });

    test('success', () {
      expect(() => TarsierLogger.success('Success Message'), returnsNormally);
    });

    test('warning', () {
      expect(() => TarsierLogger.warning('Warning Message'), returnsNormally);
    });

    test('error', () {
      expect(() => TarsierLogger.error('Error Message'), returnsNormally);
    });
  });
}
