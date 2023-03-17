import 'package:flutter/material.dart';
import 'package:streetfood/screen_signup.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image(
                image: AssetImage('images/first.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                'Get daily calorie target',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'PoppinsMedium',
                  fontSize: 19,
                ),
              ),
            ),
            Text(
              'based on your body weight',
              style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'PoppinsMedium',
                fontSize: 19,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Set your target weight and select your',
                style: TextStyle(
                  color: Color(0xffACACAC),
                  fontFamily: 'PoppinsRegular',
                  fontSize: 15,
                ),
              ),
            ),
            Text(
              "monthly schedule, and we'ill do the rest",
              style: TextStyle(
                color: Color(0xffACACAC),
                fontFamily: 'PoppinsRegular',
                fontSize: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
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
                  height: 36,
                  width: 148,
                  decoration: BoxDecoration(
                    color: Color(0xffF7BB0E),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: Center(
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
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
