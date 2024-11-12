
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:gold_calculator_app/gold-calculator-app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
     // Navigator.push(context, MaterialPageRoute(builder: (context)=>GoldApp()));

      Get.to (()=>GoldApp()) ;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('lib/assets/gold bar.jpg'),fit: BoxFit.cover,
            height: 860,width: 500,),


            //SpinKitWave(
              //color: Colors.orangeAccent,
              //duration: Duration(microseconds: 800),
           // )
          ],
        ),
      )
    );
  }
}
