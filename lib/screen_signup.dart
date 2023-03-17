import 'package:flutter/material.dart';
import 'package:streetfood/screen_login.dart';
import 'package:streetfood/screen_third.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                  builder: (context) => ThirdScreen(),
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
                padding: const EdgeInsets.only(right: 80),
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
                        'Create a New Account',
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
                  'Create an account so you can see  our\n latest Racipes',
                  style: TextStyle(
                    color: Color(0xffADAAAA),
                    fontSize: 12,
                    fontFamily: 'PoppinsRegular',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 20),
                child: Text(
                  'Name',
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
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        fontFamily: 'PoppinsMedium',
                      ),
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
                padding: const EdgeInsets.only(right: 200, top: 15),
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
                        hintStyle: TextStyle(
                          fontSize: 10,
                          fontFamily: 'PoppinsMedium',
                        ),
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
                        )),
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
                      hintStyle: TextStyle(
                        fontSize: 10,
                        fontFamily: 'PoppinsMedium',
                      ),
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
                padding: const EdgeInsets.only(right: 150, top: 15),
                child: Text(
                  'Confirm Password',
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
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        fontFamily: 'PoppinsMedium',
                      ),
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
                padding: const EdgeInsets.only(top: 50),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    height: 36,
                    width: 223,
                    decoration: BoxDecoration(
                      color: Color(0xffF7BB0E),
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Center(
                      child: Text(
                        'SIGNUP',
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
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 36,
                  width: 223,
                  decoration: BoxDecoration(
                    color: Color(0xffF7BB0E),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        width: 24,
                        height: 24,
                        image: AssetImage('images/google.png'),
                      ),
                      Text(
                        'Signup with google ',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 12,
                          fontFamily: 'PoppinsSemiBold',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account',
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
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        '  login',
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
