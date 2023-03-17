import 'dart:async';

import 'package:flutter/material.dart';
import 'package:streetfood/screen_one.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FirstScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff263238),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 300,
                image: AssetImage('images/logo.png'),
              ),
              Text(
                'TRY OUR NEW TASTE',
                style: TextStyle(
                  color: Color(0xffF7BB0E),
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
