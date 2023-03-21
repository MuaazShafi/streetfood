import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:streetfood/screen_admin_home.dart';
import 'package:streetfood/screen_login.dart';
import 'package:streetfood/screen_notification.dart';
import 'package:streetfood/screen_search.dart';
import 'package:streetfood/screen_setting.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static var currentIndexIndicator = 0;
  static var currentIndexCategory = 0;
  static var bottomBarCurrentIndex = 0;

  static const List<String> imageList = [
    'images/mutton.jpg',
    'images/chicken.jpg',
    'images/soup.jpg',
    'images/slices.jpg',
    'images/burger.jpg',
  ];
  static const List<String> itemName = [
    'mutton champ',
    'tikka boti',
    'Fruit Chat',
    'Tower Sandwich',
    'Zinger Burger',
  ];
  static const List<String> categoryName = [
    'ALL',
    'BBQ',
    'Traditional Foods',
    'Desserts',
    'Fast Food',
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                accountName: Text(
                  "John ",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontFamily: 'PoppinsMedium',
                    fontSize: 12,
                  ),
                ),
                accountEmail: Text(
                  "abc@gmail.com",
                  style: TextStyle(
                    color: Color(0xff857F7F),
                    fontFamily: 'PoppinsRegular',
                    fontSize: 9,
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 10, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Setting()));
                  },
                  child: Material(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    elevation: 2,
                    child: Container(
                      height: 32,
                      width: 228,
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Color(0xffF7BB0E),
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Setting'),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Color(0xffF7BB0E),
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 10, top: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Material(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    elevation: 2,
                    child: Container(
                      height: 32,
                      width: 228,
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Color(0xffF7BB0E),
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Log Out'),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Color(0xffF7BB0E),
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 10, top: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AdminHomeScreen()));
                  },
                  child: Material(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    elevation: 2,
                    child: Container(
                      height: 32,
                      width: 228,
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Color(0xffF7BB0E),
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Admin home'),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Color(0xffF7BB0E),
                              size: 15,
                            ),
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool isScrolled) {
            return [
              SliverAppBar(
                floating: true,
                backgroundColor: Color(0xff171717),
                automaticallyImplyLeading: false,
                bottom: PreferredSize(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Center(
                                child: Builder(
                                  builder: (context) => GestureDetector(
                                    onTap: () {
                                      Scaffold.of(context).openDrawer();
                                    },
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage('images/profile.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Badge(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationScreen(),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.notifications_none,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hello, John',
                            style: TextStyle(
                              color: Color(0xff999595),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Make your own food,',
                              style: TextStyle(
                                fontFamily: 'PoppinsMedium',
                                fontSize: 15,
                                color: Color(0xffFFFFFF),
                              ),
                              children: [
                                TextSpan(
                                  text: '\nstay at',
                                ),
                                TextSpan(
                                  text: ' Home',
                                  style: TextStyle(
                                    color: Color(0xffF7BB0E),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 29,
                              width: 29,
                              decoration: BoxDecoration(
                                color: Color(0xffF7BB0E),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {},
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SearchScreen(),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.search,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  preferredSize: Size.fromHeight(150),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15, bottom: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Feature Recipe',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: 'PoppinsSemiBold',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 153,
                  width: double.maxFinite,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        HomeScreen.currentIndexIndicator =
                            index % HomeScreen.imageList.length;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Transform(
                        transform: Matrix4.skewX(-0.15),
                        child: Container(
                          height: 153,
                          width: 302,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(
                                HomeScreen.imageList[
                                    index % HomeScreen.imageList.length],
                              ),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, bottom: 10),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 70,
                                  child: Container(
                                    height: 60,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        HomeScreen.itemName[
                                            index % HomeScreen.itemName.length],
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 15,
                                            fontFamily: 'PoppinsSemiBold'),
                                      ),
                                      Text(
                                        'by Jacob Jones',
                                        style: TextStyle(
                                            color: Color(0xffA3A3A3),
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10),
                                      ),
                                      RatingBar.builder(
                                        initialRating: 3.5,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemSize: 11,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 1.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // itemCount:HomeScreen.imageList.length,
                    // separatorBuilder: (context, i) => SizedBox(
                    //   width: 15,
                    // ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var a = 0; a < HomeScreen.imageList.length; a++)
                      buildIndicator(HomeScreen.currentIndexIndicator == a)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 15, bottom: 10, right: 20),
                  child: Row(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: 'PoppinsSemiBold',
                          fontSize: 15
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.navigate_before,
                        color: Color(0xff969696),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Color(0xffF7BB0E),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var b = 0; b < HomeScreen.imageList.length; b++)
                          buildCategoryIndicator(
                              HomeScreen.currentIndexCategory == b)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: HomeScreen.imageList.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 220,
                    ),
                    itemBuilder: (context, i) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            HomeScreen.imageList[i],
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 21,
                                width: 21,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 11,
                                ),
                              ),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Chilli Biryani',
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontFamily: 'PoppinsSemiBold',
                                          fontSize: 13,
                                        ),
                                      ),
                                      Text(
                                        'by John Jones',
                                        style: TextStyle(
                                          color: Color(0xffCACACA),
                                          fontFamily: 'PoppinsRegular',
                                          fontSize: 9,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          RatingBar.builder(
                                            initialRating: 3.5,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemSize: 11,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 1.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.access_time,
                                            color: Colors.white,
                                            size: 10,
                                          ),
                                          Text(
                                            '30 min',
                                            style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 8,
                                              fontFamily: 'PoppinsRegular',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: HomeScreen.bottomBarCurrentIndex,
          selectedItemColor: Color(0xffF7BB0E),
          unselectedItemColor: Color(0xff000000),
          selectedColorOpacity: 1,
          onTap: (x) => setState(() => HomeScreen.bottomBarCurrentIndex = x),
          items: [
            SalomonBottomBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Color(0xffFFFFFF),
              ),
              title: Text(
                'HOME',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
            SalomonBottomBarItem(
              icon: Icon(
                Icons.favorite_outline,
                color: Color(0xffFFFFFF),
              ),
              title: Text(
                'FAVOURITE',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
            SalomonBottomBarItem(
              unselectedColor: Color(0xff000000),
              icon: Icon(
                Icons.person_2_outlined,
                color: Color(0xffFFFFFF),
              ),
              title: Text(
                'PROFILE',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Color(0xffF7BB0E) : Color(0xffD9D9D9),
        ),
      ),
    );
  }

  Widget buildCategoryIndicator(bool isSelected1) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: 29,
        width: 90,
        decoration: BoxDecoration(
          color: isSelected1 ? Color(0xffF7BB0E) : Colors.white,
          borderRadius: BorderRadius.circular(07),
          border: Border.all(
            width: 1.5,
            color: Color(0xffF7BB0E),
          ),
        ),
        child: Text(""),
      ),
    );
  }
}
