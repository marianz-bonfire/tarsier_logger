import 'package:tarsier_logger/tarsier_logger.dart';
import 'package:test/test.dart';

void main() {
  group('TarsierLogger', () {
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
