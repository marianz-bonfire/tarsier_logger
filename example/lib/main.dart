import 'package:flutter/material.dart';
import 'package:tarsier_logger/tarsier_logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tarsier Logger Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final logger = TarsierLogger();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Log message',
                style: TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  logger.l("This is sample log message");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Log message",
                      style: TextStyle(color: Colors.black87)),
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  logger.i("This is sample INFO message", "i Function");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Info message",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  logger.w("This is sample WARNING message");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Warning message",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  logger.e("This is sample ERROR message");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Error message",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  TarsierLogger.success('This is sample SUCCESS message');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Success message",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  TarsierLogger.verbose('This is the sample VERBOSE message');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.cyan),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Verbose message",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Log message using static functions',
                style: TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  TarsierLogger.log('Log using static function log');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Log message",
                      style: TextStyle(color: Colors.black87)),
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  TarsierLogger.info('Log using static function info');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Info message",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  TarsierLogger.warning('Log using static function warning');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Warning message",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  TarsierLogger.error(
                    'Log using static function error',
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Error message",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  TarsierLogger.success('Log using static function success');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Success message",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  TarsierLogger.verbose('Log using static function verbose');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.cyan),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Verbose message",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
