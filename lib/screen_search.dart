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
            child: Column(
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
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: "Search Recipe here",
                        border: InputBorder.none,
                        suffix: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color(0xffF7BB0E),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: ImageIcon(
                              AssetImage('images/sliderIcon.png'),
                              size: 20,
                              color: Colors.white,
                            ),
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
      ),
    );
  }
}
