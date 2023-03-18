import 'package:flutter/material.dart';
import 'package:streetfood/screen_notification_setting.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Setting",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'PoppinsMedium',
              fontSize: 13,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationSetting()));
                },
                child: Material(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  elevation: 1.5,
                  child: Container(
                    height: 42,
                    width: 228,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 15),
                      child: Row(
                        children: [
                          Text('Notification'),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Color(0xffF7BB0E),
                            size: 15,
                          ),
                        ],
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
