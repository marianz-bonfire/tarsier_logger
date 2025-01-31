import 'package:tarsier_logger/src/tarsier_logger_base.dart';

/// A utility class for logging messages using the `TarsierLogger` instance.
///
/// The `Console` class is designed to mimic the `console` functionality found
/// in other programming languages (e.g., JavaScript, Node.js). It provides static
/// methods for logging different types of messages (info, success, warning, error,
/// verbose) in a structured and color-coded way. It serves as a simple interface
/// to the underlying `TarsierLogger` without the need to instantiate it.
///
/// The goal of this class is to offer a familiar logging interface for developers
/// who may be accustomed to using `console.log()` or `console.info()` in other
/// languages. Users can choose to use `Console` or the original `TarsierLogger`
/// class, depending on their preference.
///
/// Example usage:
/// ```dart
/// Console.info('Application started');
/// Console.success('Operation completed successfully');
/// ```
///
/// Alternatively, you can use the original `TarsierLogger` directly:
/// ```dart
/// final logger = TarsierLogger();
/// logger.i('Application started');
/// ```
class Console {
  /// Private constructor to prevent instantiation of the `Console` class.
  Console._();

  /// The singleton instance of the `TarsierLogger` used by this class.
  ///
  /// This instance is responsible for managing the log messages and ensuring
  /// consistent formatting and logging behavior.
  static final TarsierLogger _logger = TarsierLogger();

  /// Logs a general message with optional tag.
  ///
  /// - [text]: The log message.
  /// - [tag]: An optional tag to categorize the log message.
  static void log(String text, [String tag = '']) => _logger.l(text, tag);

  /// Logs an informational message in blue.
  ///
  /// - [text]: The info message to log.
  /// - [tag]: An optional tag for categorization.
  static void info(String text, [String tag = '']) => _logger.i(text, tag);

  /// Logs a success message in green.
  ///
  /// - [text]: The success message to log.
  /// - [tag]: An optional tag for categorization.
  static void success(String text, [String tag = '']) => _logger.s(text, tag);

  /// Logs a warning message in yellow.
  ///
  /// - [text]: The warning message to log.
  /// - [tag]: An optional tag for categorization.
  static void warning(String text, [String tag = '']) => _logger.w(text, tag);

  /// Logs an error message with an optional stack trace in red.
  ///
  /// - [text]: The error message to log.
  /// - [tag]: An optional tag for categorization.
  /// - [stackTrace]: An optional stack trace for detailed error logs.
  static void error(String text, [String tag = '', StackTrace? stackTrace]) =>
      _logger.e(text, tag, stackTrace);

  /// Logs a verbose/debug message in purple.
  ///
  /// - [text]: The verbose message to log.
  /// - [tag]: An optional tag for categorization.
  static void verbose(String text, [String tag = '']) => _logger.v(text, tag);

  /// Calls the general logging function (`l`).
  ///
  /// - [text]: The log message.
  /// - [tag]: An optional tag to categorize the log message.
  static void l(String text, [String tag = '']) => _logger.l(text, tag);

  /// Calls the info logging function (`i`).
  ///
  /// - [text]: The info message to log.
  /// - [tag]: An optional tag for categorization.
  static void i(String text, [String tag = '']) => _logger.i(text, tag);

  /// Calls the success logging function (`s`).
  ///
  /// - [text]: The success message to log.
  /// - [tag]: An optional tag for categorization.
  static void s(String text, [String tag = '']) => _logger.s(text, tag);

  /// Calls the warning logging function (`w`).
  ///
  /// - [text]: The warning message to log.
  /// - [tag]: An optional tag for categorization.
  static void w(String text, [String tag = '']) => _logger.w(text, tag);

  /// Calls the verbose logging function (`v`).
  ///
  /// - [text]: The verbose message to log.
  /// - [tag]: An optional tag for categorization.
  static void v(String text, [String tag = '']) => _logger.v(text, tag);

  /// Calls the error logging function (`e`).
  ///
  /// - [text]: The error message to log.
  /// - [tag]: An optional tag for categorization.
  /// - [stackTrace]: An optional stack trace for detailed error logs.
  static void e(String text, [String tag = '', StackTrace? stackTrace]) =>
      _logger.e(text, tag, stackTrace);
}
