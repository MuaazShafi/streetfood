import 'package:flutter/material.dart';
import 'package:streetfood/screen_signup.dart';
import 'package:streetfood/screen_third.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
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
                        fontSize: screenWidth * 0.04,
                        fontFamily: 'PoppinsMedium',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.1),
              child: Image(
                image: AssetImage('images/second.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05),
              child: Text(
                'Get the exact nutrition',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'PoppinsMedium',
                  fontSize: screenWidth * 0.06,
                ),
              ),
            ),
            Text(
              'values of everything you eat',
              style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'PoppinsMedium',
                fontSize: screenWidth * 0.06,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.02),
              child: Text(
                'we are updating our food database every',
                style: TextStyle(
                  color: Color(0xffACACAC),
                  fontFamily: 'PoppinsRegular',
                  fontSize: screenWidth * 0.04,
                ),
              ),
            ),
            Text(
              "minute to help you track your calories",
              style: TextStyle(
                color: Color(0xffACACAC),
                fontFamily: 'PoppinsRegular',
                fontSize: screenWidth * 0.04,
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
                      builder: (context) => ThirdScreen(),
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
    );
  }
}
