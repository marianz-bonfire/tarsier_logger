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
              Text(
                'Log message',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 8.0),
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
                  child: const Text("Log message", style: TextStyle(color: Colors.black87)),
                ),
              ),
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  logger.i("This is sample INFO message");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Info message", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 8.0),
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
                  child: const Text("Warning message", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 8.0),
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
                  child: const Text("Error message", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Log message using static functions',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 8.0),
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
                  child: const Text("Log message", style: TextStyle(color: Colors.black87)),
                ),
              ),
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {TarsierLogger.info('Log using static function info');},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Info message", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {TarsierLogger.warning('Log using static function warning');},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Warning message", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {TarsierLogger.error('Log using static function error');},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: const Text("Error message", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
