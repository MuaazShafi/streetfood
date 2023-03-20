import 'package:flutter/material.dart';
import 'package:streetfood/screen_second.dart';
import 'package:streetfood/screen_signup.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    final double skipButtonFontSize = screenWidth * 0.035;
    final double headerFontSize = screenWidth * 0.065;
    final double subHeaderFontSize = screenWidth * 0.045;
    final double descriptionFontSize = screenWidth * 0.04;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.01,
                  right: screenWidth * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xff999999),
                          fontSize: skipButtonFontSize,
                          fontFamily: 'PoppinsMedium',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.05),
                child: Image(
                  image: AssetImage('images/third.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.05),
                child: Text(
                  'Get all the healthy recipes',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontFamily: 'PoppinsMedium',
                    fontSize: headerFontSize,
                  ),
                ),
              ),
              Text(
                'that you need',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'PoppinsMedium',
                  fontSize: headerFontSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.02),
                child: Text(
                  'whether you are losing or gaining. we',
                  style: TextStyle(
                    color: Color(0xffACACAC),
                    fontFamily: 'PoppinsRegular',
                    fontSize: subHeaderFontSize,
                  ),
                ),
              ),
              Text(
                "have all the recipes you'll need",
                style: TextStyle(
                  color: Color(0xffACACAC),
                  fontFamily: 'PoppinsRegular',
                  fontSize: subHeaderFontSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.05),
                child: FloatingActionButton(
                  backgroundColor: Color(0xffF7BB0E),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
