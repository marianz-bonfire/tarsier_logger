import 'package:flutter/foundation.dart';
import 'package:tarsier_logger/src/constants.dart';

class TarsierLogger {
  /// The default maximum length for formatted log messages.
  final int maxLength;
  static final TarsierLogger _instance = TarsierLogger._internal();

  TarsierLogger._internal({this.maxLength = 100});
  factory TarsierLogger({int maxLength = 100}) => _instance;

  static void info(String text) => _instance.i(text);
  static void success(String text) => _instance.s(text);
  static void warning(String text) => _instance.w(text);
  static void error(String text) => _instance.e(text);
  static void log(String text, {String? color}) => _instance.l(text, color: color);

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
  void i(String text) => l('[INFO]: $text', color: blue);

  /// Logs a success message in green.
  void s(String text) => l('[SUCCESS]: $text', color: green);

  /// Logs a warning message in yellow.
  void w(String text) => l('[WARNING]: $text', color: yellow);

  /// Logs a error message with stack trace in red.
  void e(String text, [StackTrace? stackTrace]) => l('[ERROR]: $text ${stackTrace ?? ''}', color: red);
}
