<p align="center">
  <a href="https://pub.dev/packages/tarsier_logger">
    <img height="260" src="https://raw.githubusercontent.com/marianz-bonfire/tarsier_logger/master/assets/logo.png">
  </a>
  <h1 align="center">Tarsier Logger</h1>
</p>

<p align="center">
  <a href="https://pub.dev/packages/tarsier_logger">
    <img src="https://img.shields.io/pub/v/tarsier_logger?label=pub.dev&labelColor=333940&logo=dart">
  </a>
  <a href="https://pub.dev/packages/tarsier_logger/score">
    <img src="https://img.shields.io/pub/points/tarsier_logger?color=2E8B57&label=pub%20points">
  </a>
  <a href="https://github.com/marianz-bonfire/tarsier_logger/actions/workflows/dart.yml">
    <img src="https://github.com/marianz-bonfire/tarsier_logger/actions/workflows/dart.yml/badge.svg">
  </a>
  <a href="https://tarsier-marianz.blogspot.com">
    <img src="https://img.shields.io/static/v1?label=website&message=tarsier-marianz&labelColor=135d34&logo=blogger&logoColor=white&color=fd3a13">
  </a>
</p>

<p align="center">
  <a href="https://pub.dev/documentation/tarsier_logger/latest/">Documentation</a> •
  <a href="https://github.com/marianz-bonfire/tarsier_logger/issues">Issues</a> •
  <a href="https://github.com/marianz-bonfire/tarsier_logger/tree/master/example">Example</a> •
  <a href="https://github.com/marianz-bonfire/tarsier_logger/blob/master/LICENSE">License</a> •
  <a href="https://pub.dev/packages/tarsier_logger">Pub.dev</a>
</p>

A simple and customizable logger for Dart and Flutter applications. The `tarsier_logger` package helps you format log messages dynamically, add color-coded outputs, and manage consistent logging across your project.

<img src="https://raw.githubusercontent.com/marianz-bonfire/tarsier_logger/master/assets/demo.png">


## ✨ Features

- **Color-Coded Logs**: Supports ANSI color codes for enhanced readability in the terminal.
- **Static and Instance-Based Logging**:
  - Instance-based logging for advanced customization.
  - Static logging for quick and convenient use.
- **Structured Logging**: Logs messages with specific colors and optional emoji-based icons.
- **Log Levels**: Supports multiple log levels, including info, success, warning, error, and verbose.
- **Customizable**: Easily extendable to suit your preferred logging style (e.g., using simple print or adding emojis).


## 🚀 Getting started

Add `tarsier_logger` to your `pubspec.yaml`:
```bash
dependencies:
  tarsier_logger: ^1.0.3
```
Run the following command to install the package:
```bash
flutter pub get
```

## 📒 Usage

### 1️⃣ Basic Usage with `TarsierLogger`
The `TarsierLogger` class is used for structured logging. You can log messages with different levels, such as info, success, and error, along with optional tags.
```dart
import 'package:tarsier_logger/tarsier_logger.dart';

final logger = TarsierLogger();

logger.i('Application Started');
logger.s('Operation completed successfully');
logger.w('Warning: Low memory');
logger.e('Error occurred', StackTrace.current);
```

#### Static Logging
For a quick and convenient way to log messages, use the static wrapper:
```dart
import 'package:tarsier_logger/tarsier_logger.dart';

TarsierLogger.info('Application Started');
TarsierLogger.success('Operation completed successfully');
TarsierLogger.warning('Warning: Low memory');
TarsierLogger.error('Error occurred', StackTrace.current);
```
### 2️⃣ Using `Console` for Simplified Logging
The `Console` class mimics the console used in other programming languages and provides a simplified approach to logging. You can use Console methods like `log`, `info`, `success`, and more, without needing to instantiate the logger.

```dart
import 'package:tarsier_logger/tarsier_logger.dart';

// Using Console (similar to other programming languages' console)
Console.info('Application Started');
Console.success('Operation completed successfully');
Console.warning('Warning: Low memory');
Console.error('Error occurred', StackTrace.current);

Console.i('Application Started');
Console.s('Operation completed successfully');
Console.w('Warning: Low memory');
Console.e('Error occurred', StackTrace.current);

```

### 3️⃣Logging Functions: `printError`, `printWarning`, `printInfo`, and More

If you prefer something similar to the default `print()` function, this is a good alternative as it adds color-coding and structured formatting to your logs.
  - `printError`: Logs an error message in red with an optional tag and icon (⛔).
  - `printWarning`: Logs a warning message in yellow with an optional tag and icon (⚡).
  - `printInfo`: Logs an informational message in blue with an optional tag and icon (💡).
  - `printSuccess`: Logs a success message in green with an optional tag and icon (✅).
  - `printVerbose`: Logs a verbose message in cyan with an optional tag and icon (🚀).


### 4️⃣ Customizing Logs with Tags and Icons
You can customize the tags and icons in the log messages:
```dart
TarsierLogger.info('Application Started', 'app');
TarsierLogger.success('Operation completed successfully', 'operation', '✅');

printError('APP', 'Critical error occurred!', '⚠️');
printWarning('APP', 'Low disk space', '💾');
```

This allows for flexibility in how you format and style your log messages, improving the readability of logs in different environments.


### 🌈 Available Colors
The following colors are built-in and can be used for customizing log messages:

- 🟢 `green`: Success messages
- 🔴 `red`: Error messages
- 🔵 `blue`: Informational messages
- 🟡 `yellow`: Warnings
- ⚪ `reset`: Resets to default terminal color

## 🎖️ License
This package is licensed under the [MIT License](https://mit-license.org/).

## 🐞Suggestions for Improvement?
Feel free to open an issue or submit a pull request on [GitHub](https://github.com/marianz-bonfire/tarsier_logger).

#### Why "Tarsier Logger"?
The tarsier, one of the smallest primates, symbolizes simplicity and adaptability—just like this package! 🐒
