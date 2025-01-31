import 'package:tarsier_logger/src/prints.dart';

/// A singleton logger class for structured and color-coded logging.
///
/// `TarsierLogger` provides methods for logging different types of messages,
/// including info, success, warning, error, and verbose logs. It supports
/// optional emoji-based icons and color-coded outputs for better readability.
///
/// This logger is optimized for debugging and provides both static and
/// instance-based methods.
///
/// Example usage:
/// ```dart
/// final logger = TarsierLogger();
/// logger.i('Application started');
///
/// // Using static methods
/// TarsierLogger.info('Application started');
/// ```
class TarsierLogger {
  /// The singleton instance of `TarsierLogger`.
  static final TarsierLogger _instance = TarsierLogger._internal();

  /// Private constructor to enforce singleton usage.
  TarsierLogger._internal();

  /// Factory constructor that returns the singleton instance.
  factory TarsierLogger() => _instance;

  /// Logs an informational message.
  ///
  /// - [text]: The message to log.
  /// - [tag]: An optional tag to categorize the log message.
  ///
  /// Example:
  /// ```dart
  /// TarsierLogger.info('Fetching data from API');
  /// ```
  static void info(String text, [String tag = '']) => _instance.i(text, tag);

  /// Logs a success message.
  ///
  /// - [text]: The success message.
  /// - [tag]: An optional tag for categorization.
  ///
  /// Example:
  /// ```dart
  /// TarsierLogger.success('Data loaded successfully');
  /// ```
  static void success(String text, [String tag = '']) => _instance.s(text, tag);

  /// Logs a warning message.
  ///
  /// - [text]: The warning message.
  /// - [tag]: An optional tag for categorization.
  ///
  /// Example:
  /// ```dart
  /// TarsierLogger.warning('Low disk space');
  /// ```
  static void warning(String text, [String tag = '']) => _instance.w(text, tag);

  /// Logs an error message.
  ///
  /// - [text]: The error message.
  /// - [tag]: An optional tag for categorization.
  /// - [stackTrace]: An optional stack trace for debugging errors.
  ///
  /// Example:
  /// ```dart
  /// try {
  ///   throw Exception('Something went wrong');
  /// } catch (e, stackTrace) {
  ///   TarsierLogger.error(e.toString(), 'API', stackTrace);
  /// }
  /// ```
  static void error(String text, [String tag = '', StackTrace? stackTrace]) =>
      _instance.e(text, tag, stackTrace);

  /// Logs a verbose/debug message.
  ///
  /// - [text]: The verbose message.
  /// - [tag]: An optional tag for categorization.
  ///
  /// Example:
  /// ```dart
  /// TarsierLogger.verbose('Debugging connection issues');
  /// ```
  static void verbose(String text, [String tag = '']) => _instance.v(text, tag);

  /// Logs a general message.
  ///
  /// - [text]: The log message.
  /// - [tag]: An optional tag for categorization.
  ///
  /// Example:
  /// ```dart
  /// TarsierLogger.log('System initialized');
  /// ```
  static void log(String text, [String tag = '']) => _instance.l(text, tag);

  /// Prints a formatted log message with optional categorization.
  ///
  /// - [text]: The log message.
  /// - [tag]: An optional tag for organization.
  ///
  /// Example:
  /// ```dart
  /// final logger = TarsierLogger();
  /// logger.l('User signed in', 'Auth');
  /// ```
  void l(String text, [String tag = '']) {
    printLog(tag, text);
  }

  /// Logs an informational message in blue.
  ///
  /// - [text]: The info message.
  /// - [tag]: An optional tag for categorization.
  void i(String text, [String tag = '']) => printInfo(tag, text);

  /// Logs a success message in green.
  ///
  /// - [text]: The success message.
  /// - [tag]: An optional tag for categorization.
  void s(String text, [String tag = '']) => printSuccess(tag, text);

  /// Logs a warning message in yellow.
  ///
  /// - [text]: The warning message.
  /// - [tag]: An optional tag for categorization.
  void w(String text, [String tag = '']) => printWarning(tag, text);

  /// Logs a verbose/debug message in purple.
  ///
  /// - [text]: The verbose message.
  /// - [tag]: An optional tag for categorization.
  void v(String text, [String tag = '']) => printVerbose(tag, text);

  /// Logs an error message with an optional stack trace in red.
  ///
  /// - [text]: The error message.
  /// - [tag]: An optional tag for categorization.
  /// - [stackTrace]: The stack trace, if applicable.
  ///
  /// Example:
  /// ```dart
  /// try {
  ///   throw Exception('Critical failure');
  /// } catch (e, stackTrace) {
  ///   TarsierLogger().e(e.toString(), 'System', stackTrace);
  /// }
  /// ```
  void e(String text, [String tag = '', StackTrace? stackTrace]) =>
      printError(tag, '$text ${stackTrace != null ? ': $stackTrace' : ''}');
}
