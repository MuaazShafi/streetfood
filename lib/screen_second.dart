import 'package:flutter/material.dart';
import 'package:streetfood/screen_signup.dart';
import 'package:streetfood/screen_third.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0),
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
                        fontSize: 15,
                        fontFamily: 'PoppinsMedium',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image(
                image: AssetImage('images/second.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                'Get the exact nutrition',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'PoppinsMedium',
                  fontSize: 19,
                ),
              ),
            ),
            Text(
              'values of every thing you eat',
              style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'PoppinsMedium',
                fontSize: 19,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'we are updating our food database every',
                style: TextStyle(
                  color: Color(0xffACACAC),
                  fontFamily: 'PoppinsRegular',
                  fontSize: 15,
                ),
              ),
            ),
            Text(
              "minute to help you track your calories",
              style: TextStyle(
                color: Color(0xffACACAC),
                fontFamily: 'PoppinsRegular',
                fontSize: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
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
