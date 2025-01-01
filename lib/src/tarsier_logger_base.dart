import 'package:flutter/foundation.dart';
import 'package:tarsier_logger/src/constants.dart';

/// A singleton logger class for structured and color-coded logging.
///
/// `TarsierLogger` provides methods for logging different types of messages
/// (info, success, warning, error) with optional emoji-based icons and color-coded
/// outputs. The logger is optimized for debugging and can be initialized with
/// specific settings.
///
/// Example:
/// ```dart
/// final logger = TarsierLogger(showIcon: true);
/// logger.i('Application started');
///
///
/// //TarsierLogger.info('Application started'); // using staticc method
/// ```
class TarsierLogger {
  /// Determines whether icons are displayed in the log messages.
  final bool showIcon;

  /// Holds the singleton instance of the logger.
  static TarsierLogger? _instance;

  /// Private constructor for internal use.
  TarsierLogger._internal({this.showIcon = false});

  /// Factory constructor to initialize or retrieve the singleton instance.
  ///
  /// If `TarsierLogger` has already been initialized, subsequent calls with
  /// different configurations (e.g., `showIcon`) will be ignored.
  ///
  /// - [showIcon]: Determines if emoji icons are included in log messages.
  factory TarsierLogger({bool showIcon = false}) {
    if (_instance == null) {
      _instance = TarsierLogger._internal(showIcon: showIcon);
    } else if (_instance!.showIcon != showIcon) {
      // Optional: Add a warning or handle reconfiguration
      debugPrint(
          'TarsierLogger already initialized. Ignoring new configuration.');
    }
    return _instance!;
  }

  static void info(String text) => _instance?.i(text);
  static void success(String text) => _instance?.s(text);
  static void warning(String text) => _instance?.w(text);
  static void error(String text) => _instance?.e(text);
  static void log(String text, {String? color}) =>
      _instance?.l(text, color: color);

  /// Prints a formatted log message with dynamic hyphen padding.
  ///
  /// - [text]: The message to log.
  /// - [color]: Optional color for the log text (use the ANSI color codes).
  void l(String text, {String? color}) {
    if (kDebugMode) {
      print('${color ?? ''}$text$reset');
    }
  }

  /// Logs an info message in blue.
  void i(String text) =>
      l('[${showIcon ? defaultLevelEmojis[Level.info] : ''}INFO]: $text',
          color: blue);

  /// Logs a success message in green.
  void s(String text) =>
      l('[${showIcon ? defaultLevelEmojis[Level.success] : ''}SUCCESS]: $text',
          color: green);

  /// Logs a warning message in yellow.
  void w(String text) =>
      l('[${showIcon ? defaultLevelEmojis[Level.warning] : ''}WARNING]: $text',
          color: yellow);

  /// Logs an error message with stack trace in red.
  void e(String text, [StackTrace? stackTrace]) => l(
      '[${showIcon ? defaultLevelEmojis[Level.error] : ''}ERROR]: $text ${stackTrace ?? ''}',
      color: red);
}
