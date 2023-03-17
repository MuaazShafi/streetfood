import 'package:flutter/material.dart';
import 'package:streetfood/screen_forget_password.dart';
import 'package:streetfood/screen_home.dart';
import 'package:streetfood/screen_signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupScreen(),
                ),
              );
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        height: 83,
                        width: 83,
                        decoration: BoxDecoration(
                          color: Color(0xffF7BB0E),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45, left: 45),
                      child: Text(
                        'Welcome Back',
                        style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'PoppinsSemiBold',
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'I am very happy to see you. you can continue\n to login for latest Racipes',
                  style: TextStyle(
                    color: Color(0xffADAAAA),
                    fontSize: 12,
                    fontFamily: 'PoppinsRegular',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 40),
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Color(0xffADAAAA),
                    fontSize: 10,
                    fontFamily: 'PoppinsRegular',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 33,
                  width: 248,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 2, left: 10),
                      hintText: 'Email Address',
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xffF7BB0E),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xffF7BB0E),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180, top: 15),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xffADAAAA),
                    fontSize: 10,
                    fontFamily: 'PoppinsRegular',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 33,
                  width: 248,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      contentPadding: EdgeInsets.only(top: 2, left: 10),
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xffF7BB0E),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xffF7BB0E),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPassword(),
                          ),
                        );
                      },
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          color: Color(0xff969494),
                          fontSize: 10,
                          fontFamily: 'PoppinsMedium',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
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
                        'LOGIN',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 12,
                          fontFamily: 'PoppinsSemiBold',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 210),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 12,
                        fontFamily: 'PoppinsMedium',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Text(
                        '  SIGNUP',
                        style: TextStyle(
                          color: Color(0xffF7BB0E),
                          fontSize: 12,
                          fontFamily: 'PoppinsSemiBold',
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
