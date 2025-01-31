import 'package:tarsier_logger/src/colors.dart';

/// A set of utility functions for logging messages with dynamic formatting and colors.
///
/// This module provides functions to log messages with various levels of severity (e.g.,
/// INFO, ERROR, SUCCESS, WARNING) and includes color formatting for terminal output.
/// If you prefer something similar to the default `print()` function, this is a good
/// alternative as it adds color-coding and structured formatting to your logs.
///
/// You can use these functions as follows:
/// ```dart
/// printLog('INFO', 'Application started');
/// printError('APP_ERROR', 'An unexpected error occurred');
/// ```
///
/// This logging system is especially helpful for debugging and providing clear feedback
/// in development mode, as it can conditionally show output based on whether the app is
/// running in debug mode or not.
final bool isDebugMode = _detectDebugMode();

/// Determines if the app is running in debug mode by using Dart's assert mechanism.
bool _detectDebugMode() {
  bool debugMode = false;
  assert(() {
    debugMode = true;
    return true;
  }());
  return debugMode;
}

/// Formats the text within brackets, adjusting the width and padding it to be centered.
/// Optionally, you can exclude the brackets.
String _formatInBrackets(String text, [int width = 16, bool bracket = true]) {
  if (text.isEmpty) {
    return '';
  }
  int padding =
      (width - text.length) ~/ 2; // Calculate spaces needed on both sides
  String paddedText = text.padLeft(text.length + padding).padRight(width);
  if (bracket) {
    return "[$paddedText]"; // Enclose in brackets
  }
  return paddedText;
}

/// Prints the log only if the app is in debug mode.
/// This helps control the verbosity of logs in production environments.
void printDebug(Object? object) {
  if (isDebugMode) {
    print(object);
  }
}

/// Prints a general log message with optional tag and icon, using the default `print()` format.
/// The message is color-coded based on the level (info, success, warning, etc.).
/// - [tag]: A label or tag to categorize the log.
void printLog(String tag, String message, [String icon = '']) {
  printDebug('$reset${"${_formatInBrackets('$icon$tag')}: $message"}$reset');
}

/// Prints an error message in red with a special error icon and color formatting.
/// This is used for logging critical issues or errors that need immediate attention.
/// - [tag]: The tag categorizing the error (e.g., "APP_ERROR").
/// - [message]: The error message to display.
printError(String tag, String message, [String icon = '⛔']) {
  printDebug(
      '${ForeColor.red}${"[$icon${BackColor.red}${ForeColor.black}${_formatInBrackets('ERROR', 16, false)}$reset${ForeColor.red}]${_formatInBrackets(tag)}: $message"}$reset');
}

/// Prints an informational message in blue, often used for general logs or status updates.
/// - [tag]: The tag categorizing the information (e.g., "APP_START").
/// - [message]: The information message to display.
printInfo(String tag, String message, [String icon = '💡']) {
  printDebug(
      '${ForeColor.blue}${"[$icon${BackColor.blue}${ForeColor.black}${_formatInBrackets('INFO', 16, false)}$reset${ForeColor.blue}]${_formatInBrackets(tag)}: $message"}$reset');
}

/// Prints a warning message in yellow, used for non-critical issues that may require attention.
/// - [tag]: The tag categorizing the warning (e.g., "DEPRECATED").
/// - [message]: The warning message to display.
printWarning(String tag, String message, [String icon = '⚡']) {
  printDebug(
      '${ForeColor.yellow}${"[$icon${BackColor.yellow}${ForeColor.black}${_formatInBrackets('WARNING', 16, false)}$reset${ForeColor.yellow}]${_formatInBrackets(tag)}: $message"}$reset');
}

/// Prints a success message in green, commonly used for indicating successful actions or results.
/// - [tag]: The tag categorizing the success (e.g., "UPLOAD_COMPLETE").
/// - [message]: The success message to display.
printSuccess(String tag, String message, [String icon = '✅']) {
  printDebug(
      '${ForeColor.green}${"[$icon${BackColor.green}${ForeColor.black}${_formatInBrackets('SUCCESS', 16, false)}$reset${ForeColor.green}]${_formatInBrackets(tag)}: $message"}$reset');
}

/// Prints a verbose or debug message in purple, used for detailed debugging or information that may be helpful during development.
/// - [tag]: The tag categorizing the verbose message (e.g., "DEBUG").
/// - [message]: The verbose message to display.
printVerbose(String tag, String message, [String icon = '🚀']) {
  printDebug(
      '$reset${"[$icon${BackColor.cyan}${ForeColor.black}${_formatInBrackets('VERBOSE', 16, false)}$reset]${ForeColor.cyan}${_formatInBrackets(tag)}: $message"}$reset');
}
