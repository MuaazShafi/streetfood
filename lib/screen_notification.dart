import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  static const List<String> images = [
    'images/chacha1.jpg',
    'images/chachi.jpg',
    'images/bachaOfChahca.jpg',
    'images/andha.jpg',
    'images/chacha1.jpg',
    'images/chachi.jpg',
    'images/bachaOfChahca.jpg',
    'images/andha.jpg',
  ];
  static const List<String> recipeNames = [
    'moli k prathy',
    'gobhi k prahty ',
    'aalo k prathy',
    'lachy waly prathy',
    'moli k prathy',
    'gobhi k prahty ',
    'aalo k prathy',
    'lachy waly prathy',
  ];
  static const List<String> names = [
    'chacha',
    'chachi',
    'bacha of chacha',
    'andha',
    'chacha',
    'chachi',
    'bacha of chacha',
    'andha',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff000000),
          ),
          backgroundColor: Color(0xffffffff),
          elevation: 1,
          title: Text(
            "Notification",
            style: TextStyle(
              color: Color(0xff000000),
              fontFamily: "PoppinsMedium",
              fontSize: 13,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),

                  )
              ),
              elevation: .5,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[i]),
                ),
                title: Text(
                  recipeNames[i],
                  style: TextStyle(
                      color: Color(0xffF7BB0E),
                      fontFamily: 'PoppinsSemiBold',
                      fontSize: 11),
                ),
                subtitle: RichText(
                  text: TextSpan(
                    text: 'uploaded by ',
                    style: TextStyle(
                        color: Color(0xff847D7D),
                        fontSize: 11,
                        fontFamily: "PoppinsRegular"),
                    children: [
                      TextSpan(
                        text: names[i],
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: 'PoppinsSemiBold',
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  Icons.more_horiz_outlined,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
          separatorBuilder: (context, i) => SizedBox(
            height: 10,
          ),
          itemCount: names.length,
        ),
      ),
    );
  }
}
