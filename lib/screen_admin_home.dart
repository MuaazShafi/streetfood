import 'package:flutter/material.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff000000),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Text(
                        'DASHBOARD',
                        style: TextStyle(
                          color: Color(0xffF7BB0E),
                          fontSize: 17,
                          fontFamily: 'PoppinsSemiBold',
                        ),
                      ),
                    ),
                    Image(
                      height: 80,
                      width: 150,
                      image: AssetImage('images/WHITE 1.png'),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 144,
                        width: 127,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              size: 100,
                              color: Color(0xffF7BB0E),
                            ),
                            Text(
                              'Send Notification',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'PoppinsMedium',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 144,
                        width: 127,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.file_upload_outlined,
                              size: 100,
                              color: Color(0xffF7BB0E),
                            ),
                            Text(
                              'Upload Recipe',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'PoppinsMedium',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 310),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 144,
                        width: 127,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.view_compact_alt_outlined,
                              size: 100,
                              color: Color(0xffF7BB0E),
                            ),
                            Text(
                              'View User',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'PoppinsMedium',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 144,
                        width: 127,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.block_flipped,
                              size: 100,
                              color: Color(0xffF7BB0E),
                            ),
                            Text(
                              'Blocked User',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'PoppinsMedium',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 470),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 144,
                        width: 127,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.trending_up_rounded,
                              size: 100,
                              color: Color(0xffF7BB0E),
                            ),
                            Text(
                              'Approve Recipe',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'PoppinsMedium',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Material(
                        elevation: 1.5,
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          height: 144,
                          width: 127,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                                size: 100,
                                color: Color(0xffF7BB0E),
                              ),
                              Text(
                                'View own Recipe',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'PoppinsMedium',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
