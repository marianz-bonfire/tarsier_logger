/// ANSI color codes for styled terminal output.
final String green = '\x1B[32m';
final String red = '\x1B[31m';
final String blue = '\x1B[34m';
final String yellow = '\x1B[33m';
final String reset = '\x1B[0m';

/// [Level]s to control logging output. Logging can be enabled to include all
/// levels above certain [Level].
enum Level {
  success(1000),
  debug(2000),
  info(3000),
  warning(4000),
  error(5000),
  ;

  final int value;

  const Level(this.value);
}

final Map<Level, String> defaultLevelEmojis = {
  Level.success: '✅ ',
  Level.debug: '🐛 ',
  Level.info: 'ℹ️ ',
  Level.warning: '⚠️ ',
  Level.error: '⛔ ',
};
