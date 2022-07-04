import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List color = [Colors.red, Colors.yellow, Colors.green];
  Random random = new Random();
  int index = 0;
  int count = 0;
  void changeIndex() {
    setState(() {
      index = random.nextInt(3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Change Backgound Color"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              count++;
              if (count % 2 == 0) {
                changeIndex();
              }
            },
            child: Text("Click me to change background"),
          ),
        ),
        backgroundColor: color[index]);
  }
}
