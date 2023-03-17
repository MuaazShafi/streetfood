import 'package:flutter/material.dart';
import 'package:streetfood/screen_second.dart';
import 'package:streetfood/screen_signup.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
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
                padding: const EdgeInsets.only(top: 50),
                child: Image(
                  image: AssetImage('images/third.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'Get all the healthy recipes',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontFamily: 'PoppinsMedium',
                    fontSize: 19,
                  ),
                ),
              ),
              Text(
                'that you need',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'PoppinsMedium',
                  fontSize: 19,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'whether you are losing or gaining. we',
                  style: TextStyle(
                    color: Color(0xffACACAC),
                    fontFamily: 'PoppinsRegular',
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                "have all the recipes you'll need",
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
