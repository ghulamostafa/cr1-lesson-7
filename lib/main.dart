import 'package:cr1_lesson_7/chat_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ChatWidget(
            id: 1,
            imagePath: 'https://picsum.photos/seed/picsum/200/300',
            messageTitle: 'james',
            messageTime: '11:05',
            messageBody: 'Hello James',
          ),
          ChatWidget(
            id: 2,
            imagePath: 'https://picsum.photos/seed/picsum/200/300',
            messageTitle: 'Bilal',
            messageTime: '11:05',
            messageBody: 'Hello James',
          ),
          ChatWidget(
            id: 3,
            imagePath: 'https://picsum.photos/seed/picsum/200/300',
            messageTitle: 'Emaan',
            messageTime: '11:05',
            messageBody: 'Hello James',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
