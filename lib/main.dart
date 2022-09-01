import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/Log_in.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart' ;


import 'Home_Page.dart';
import 'Phone.dart';
import 'Sign_Up.dart';



main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash:Lottie.asset("assest/110934-morphing.json")
        ,
        nextScreen:  Login(),
      splashIconSize: 250,
      backgroundColor: Colors.blueAccent,
      duration: 4000,
splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}

