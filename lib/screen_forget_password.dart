import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => SixthPage(),
            //     ),
            //   );
            // },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Forgot Password",
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: 'PoppinsMedium',
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image(
                  height: 229,
                  width: 230,
                  image: AssetImage(
                    'images/fP.png',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'Select email should we use to reset\n Password',
                  style: TextStyle(
                    color: Color(0xff7D7D7D),
                    fontSize: 13,
                    fontFamily: 'PoppinsMedium',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, right: 80, left: 80),
                child: SizedBox(
                  height: 33,
                  width: 248,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.circle,
                        color: Color(
                          0xffD9D9D9,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(top: 2, left: 10),
                      hintText: 'abc@gmail.com',
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xffF7BB0E),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xffF7BB0E),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => EighthPage(),
                  //     ),
                  //   );
                  // },
                  child: Container(
                    height: 36,
                    width: 148,
                    decoration: BoxDecoration(
                      color: Color(0xffF7BB0E),
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Center(
                      child: Text(
                        'Send',
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
      ),
    );
  }
}
