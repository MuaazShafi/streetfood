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
        body: Column(
          children: [
            SizedBox(
              height: 41,
              width: 317,
              child: TextField(),
            ),
          ],
        ),
      ),
    );
  }
}
