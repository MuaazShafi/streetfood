import 'package:flutter/material.dart';
import 'package:streetfood/screen_signup.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.1),
              child: Image(
                image: AssetImage('images/first.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05),
              child: Text(
                'Get daily calorie target',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'PoppinsMedium',
                  fontSize: screenWidth * 0.05,
                ),
              ),
            ),
            Text(
              'based on your body weight',
              style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'PoppinsMedium',
                fontSize: screenWidth * 0.05,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.02),
              child: Text(
                'Set your target weight and select your',
                style: TextStyle(
                  color: Color(0xffACACAC),
                  fontFamily: 'PoppinsRegular',
                  fontSize: screenWidth * 0.04,
                ),
              ),
            ),
            Text(
              "monthly schedule, and we'ill do the rest",
              style: TextStyle(
                color: Color(0xffACACAC),
                fontFamily: 'PoppinsRegular',
                fontSize: screenWidth * 0.04,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  );
                },
                child: Container(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.4,
                  decoration: BoxDecoration(
                    color: Color(0xffF7BB0E),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: Center(
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: screenWidth * 0.05,
                        fontFamily: 'PoppinsSemiBold',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
