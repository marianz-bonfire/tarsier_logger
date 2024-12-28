import 'package:flutter/foundation.dart';
import 'package:tarsier_logger/src/constants.dart';

class TarsierLogger {
  /// Determines whether icons are displayed in the log messages.
  final bool showIcon;

  static TarsierLogger? _instance;

  TarsierLogger._internal({this.showIcon = false});

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
