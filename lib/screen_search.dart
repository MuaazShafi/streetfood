import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SearchScreen());
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff000000),
            ),
          ),
          backgroundColor: Color(0xffffffff),
          elevation: 1,
          title: Text(
            "Search",
            style: TextStyle(
              color: Color(0xff000000),
              fontFamily: "PoppinsMedium",
              fontSize: 13,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Center(
            child: SizedBox(
              height: double.maxFinite,
              width: 317,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Material(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    shadowColor: Colors.black,
                    elevation: 1,
                    child: SizedBox(
                      height: 41,
                      width: 317,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xff37474F),
                                ),
                                hintText: 'Search Recipe here',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 30,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xffF7BB0E),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: ImageIcon(
                                    AssetImage('images/sliderIcon.png'),
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Chiken Wings Recipe",
                          style: TextStyle(
                              color: Color(0xff848484)
                          ),
                        ),
                        Icon(CupertinoIcons.share,color: Color(0xff848484),)
                      ],
                    ),
                  ),
                  SizedBox(height: 4,),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    thickness: 1.5,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Chiken Wings Recipe",
                        style: TextStyle(
                            color: Color(0xff848484)
                        ),
                      ),
                      Icon(CupertinoIcons.share,color: Color(0xff848484))
                    ],
                  ),
                  SizedBox(height: 4,),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    thickness: 1.5,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Chiken Wings Recipe",
                        style: TextStyle(
                            color: Color(0xff848484)
                        ),
                      ),
                      Icon(CupertinoIcons.share,color: Color(0xff848484))
                    ],
                  ),
                  SizedBox(height: 4,),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    thickness: 1.5,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Chiken Wings Recipe",
                        style: TextStyle(
                            color: Color(0xff848484)
                        ),
                      ),
                      Icon(CupertinoIcons.share,color: Color(0xff848484))
                    ],
                  ),
                  SizedBox(height: 4,),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    thickness: 1.5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
