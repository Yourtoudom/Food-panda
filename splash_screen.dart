import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myproject_flutter/screens/location_access_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5), (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LocationAccessScreen(),));
      }

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFFF2B85),
      body: Center(
        child: Image.asset("assets/logo.png", scale: 3),
      ),
    );
  }
}