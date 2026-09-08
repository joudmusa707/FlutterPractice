import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String _currentFortune = "";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentFortune = "";
  final fortuneList = [
    "You will have a great day!",
    "Good things are coming your way.",
    "You will find happiness in unexpected places.",
    "Your hard work will pay off soon.",
    "A new opportunity is on the horizon.",
  ];

  void _randomFortune() {
    var random = Random();
    int fortuneIndex = random.nextInt(fortuneList.length);
    // print("Random fortune index: $fortuneIndex");
    setState(() {
      _currentFortune = fortuneList[fortuneIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Demo Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/fortune_cookie.jpg",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),

            ElevatedButton(
              onPressed: _randomFortune,
              child: Text("Get Fortune"),
            ),

            Text(
              ("Your Fortune for today is: "),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _currentFortune,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
