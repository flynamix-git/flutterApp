import 'package:flutter/material.dart';
import 'package:flutter_app_test/screens/my_homepage.dart';
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
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 43, 123, 126)),
        scaffoldBackgroundColor: Color.fromARGB(255, 1, 150, 130),
      ),
      home: const MyHomePage(
        
        ),
    );
  }
}


