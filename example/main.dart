import 'package:tarsier_logger/tarsier_logger.dart';

void main() {
  final logger = TarsierLogger();

  logger.i('Application Started');
  logger.s('Operation completed successfully');
  logger.w('Warning: Low memory');
  logger.e('Error occurred', 'StackTrace.current');

  // Using static methods
  TarsierLogger.info('Application Started');
  TarsierLogger.success('Operation completed successfully');
  TarsierLogger.warning('Warning: Low memory');
  TarsierLogger.error('Error occurred', 'StackTrace.current');

  // Using Console (similar to other programming languages' console)
  Console.info('Application Started');
  Console.success('Operation completed successfully');
  Console.warning('Warning: Low memory');
  Console.error('Error occurred', 'StackTrace.current');

  Console.i('Application Started');
  Console.s('Operation completed successfully');
  Console.w('Warning: Low memory');
  Console.e('Error occurred', 'StackTrace.current');

  // Using functions similar to print
  printError('APP', 'Critical error occurred!', '⚠️');
  printWarning('APP', 'Low disk space', '💾');
}
