import 'package:eslamy/HomeScreen.dart';
import 'package:flutter/material.dart';
class splash extends StatelessWidget {
static const String RouteName ="splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),()
     { Navigator.pushReplacementNamed(context,
         HomeScreen.RouteName) ;
     }
    );
return Scaffold(

  body: Container(
    child:Image.asset("assets/images/splash.png",
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.fill ,
    ),


  ),
);
  }
}
