import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _HomePageState();
  
  }

class _HomePageState extends State<MyHomePage>{

  int x=0;
  void testButton(){
    print(x);

    x++;
  }


    

    @override
    Widget build(BuildContext context){
      //Get Screen Dimensions for relative spacing
      final h = MediaQuery.of(context).size.height;
      final w = MediaQuery.of(context).size.width;

      //Construct the Screen
      return Scaffold(
        
        body: Center(
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [

              Icon(
                Icons.account_balance_wallet,size: h*0.2,
                shadows: [Shadow(color: Color.fromARGB(255, 65, 80, 70),blurRadius: 3)],
                blendMode:BlendMode.overlay,
                weight: 2,
              ),

              SizedBox(height: h*0.02),
              myButtonWidget(title: "Main"),
              

              

              SizedBox(height: h*0.02),
              myButtonWidget(title: "Options"),
              SizedBox(height: h*0.02),
              
              myButtonWidget(title: "Library"),

              SizedBox(height: h*0.02),

              myButtonWidget(title: "Exit"),

              SizedBox(height: h*0.02)
             ],
            )
        )     
        
          
        

      );
    }


}

class myButtonWidget extends StatelessWidget{
  final String title;
  const myButtonWidget({super.key,required this.title});
  void onPressed(){
    
  }

  @override
  Widget build(BuildContext context){
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onPressed,               
        style: ElevatedButton.styleFrom(
        minimumSize: Size(w * 0.5, h * 0.06),
        elevation: 7,
        shape: BeveledRectangleBorder(borderRadius: BorderRadiusGeometry.circular(6),
        side: BorderSide(color: Color(0xffffffff),width: 0.5)
        ),
        backgroundColor: Color.fromARGB(255, 132, 209, 203)
        ),
        child:Text(title),

    );
  }
}

