/// Tarsier Logger Library
///
/// This library provides a simple and flexible logging utility for Dart and Flutter applications.
/// It supports multiple log levels (info, success, warning, error) and customizable log outputs.
/// Optionally, emoji icons can be included in log messages for better readability.
///
/// Usage:
/// - Import this library in your Dart/Flutter project.
/// - Initialize `TarsierLogger` as a singleton using the factory constructor.
/// - Use the static methods (`info`, `success`, `warning`, `error`, `log`) for logging.
library tarsier_logger;

// Exporting library components
export 'src/constants.dart'; // Provides constants for color codes and emoji mapping.
export 'src/tarsier_logger_base.dart'; // Contains the core TarsierLogger class implementation.
