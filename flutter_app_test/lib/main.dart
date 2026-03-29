import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: Color(0x55555555),
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
  
  int num = 0;

  void increment(){
    setState(() {
      num++;
    });
  }
  
  void decrement(){
    setState(() {
      num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
      child:Column(
        mainAxisAlignment: .center,
        spacing: 15,
        children: [
    
        FloatingActionButton(
          onPressed: increment,
          child:Icon(Icons.plus_one)
        
        ),
          
        FloatingActionButton(
          onPressed: decrement,
          shape: CircleBorder(),
        ),
       
        Text(
          '$num',
          style:TextStyle(color: Color(0xFF000000)),
          textScaler: TextScaler.linear(4),
        ),
      ],
      ),
     
      ),
      
    );
  }
}
