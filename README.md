<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
[![pub package](https://img.shields.io/pub/v/tarsier_logger.svg)](https://pub.dev/packages/tarsier_logger)
[![package publisher](https://img.shields.io/pub/publisher/tarsier_logger.svg)](https://pub.dev/packages/tarsier_logger/publisher)


<img height="200" src="https://raw.githubusercontent.com/marianz-bonfire/tarsier_logger/master/assets/logo.png">


A simple and customizable logger for Dart and Flutter applications. The `tarsier_logger` package helps you format log messages dynamically, add color-coded outputs, and manage consistent logging across your project.

<img src="https://raw.githubusercontent.com/marianz-bonfire/tarsier_logger/master/assets/demo.png">


## ✨ Features

- **Color-Coded Logs**: Supports ANSI color codes for enhanced readability in the terminal.
- **Static and Instance-Based Logging**:
  - Instance-based logging for advanced customization.
  - Static logging for quick and convenient use.
- **Iconized Logs**: Shows icon of log messages.


## 🚀 Getting started

Add `tarsier_logger` to your `pubspec.yaml`:
```bash
dependencies:
  tarsier_logger: ^1.0.1
```
Run the following command to install the package:
```bash
flutter pub get
```

## 📒 Usage

You can use an instance of the `TarsierLogger` class to log messages with dynamic padding and color coding.

```dart
import 'package:tarsier_logger/tarsier_logger.dart';

final logger = TarsierLogger();
//final logger = TarsierLogger(showIcon: true); //Show icons

logger.i('This is an informational message.');
logger.s('This is a success message.');
logger.w('This is a warning message.');
logger.e('This is an error message.');
```

#### Static Logging
For a quick and convenient way to log messages, use the static wrapper:
```dart
import 'package:tarsier_logger/tarsier_logger.dart';

TarsierLogger.info("Static informational message.");
TarsierLogger.success("Static success message.");
TarsierLogger.warning("Static warning message.");
TarsierLogger.error("Static error message.");
```

### Custom Messages with Colors
You can log messages with custom colors using the log method:
```dart
TarsierLogger.log('Custom Message with Blue Color', color: blue);
```

### Available Colors
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
