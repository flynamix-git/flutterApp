import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _HomePageState();
  
  }

class _HomePageState extends State<MyHomePage>{

  void testButton(){
    print("Button Pressed");
  }


    @override
    Widget build(BuildContext context){
      //Get Screen Dimensions for relative spacing
      final h = MediaQuery.of(context).size.height;
      final w = MediaQuery.of(context).size.width;

      //Construct the Screen
      return Scaffold(
        appBar: AppBar(title: const Text("My App"),centerTitle: true),
        body: Center(
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
              Icon(Icons.takeout_dining,size: h*0.2,),

              SizedBox(height: h*0.02),

              ElevatedButton(
                onPressed: testButton,    
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(w * 0.8, h * 0.06),
                ),
                child:Text("Main"),
              ),

              SizedBox(height: h*0.02),

               ElevatedButton(
                onPressed: testButton,               
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(w * 0.8, h * 0.06),
                ),
                child:Text("Settings"),
              ),
              SizedBox(height: h*0.02),

               ElevatedButton(
                onPressed: testButton,               
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(w * 0.8, h * 0.06),
                ),
                child:Text("Profile"),
              ),

              SizedBox(height: h*0.02)
             ],
            )
        )     
        
          
        

      );
    }
}