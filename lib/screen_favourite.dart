import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  static const List<String> desertsImages = [
    'images/oliveoil_sponch_cake.jpg',
    'images/Pumpkin-Spice-Cake-Roll.jpg',
    'images/Pumpkin-Tiramisu.jpg',
    'images/Strawberry-Frech-Cake.jpg',
    'images/Vanilla-Cardamom-Kulfi.jpg',
  ];
  static const List<String> desertImagesName =[
    'olive-oil sponch cake',
    'Pumpkin Spice Cake Roll',
    'Pumpkin Tiramisu       ',
    'Strawberry French Cake',
    'Vanilla Cardamom Kulfi',
  ];

  static const List<String> BBQImages = [
    'images/mutton.jpg',
    'images/chicken.jpg',
    'images/soup.jpg',
    'images/slices.jpg',
    'images/burger.jpg',
  ];
  static const List<String> fastFoodImages = [
    'images/mutton.jpg',
    'images/chicken.jpg',
    'images/soup.jpg',
    'images/slices.jpg',
    'images/burger.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Favourite Recipe',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'PoppinsMedium',
              fontSize: 13,
            ),
          ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Desserts",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 180,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => Container(
                      height: 180,
                      width: 157,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            FavouriteScreen.desertsImages[i],
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
                                    height: 70,
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
                                        FavouriteScreen.desertImagesName[i],
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
                    separatorBuilder: (context, i) => SizedBox(
                      width: 10,
                    ),
                    itemCount: 5,
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 2,
                ),
                Text(
                  "BBQ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 180,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => Container(
                      height: 180,
                      width: 157,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            FavouriteScreen.desertsImages[i],
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
                    separatorBuilder: (context, i) => SizedBox(
                      width: 10,
                    ),
                    itemCount: 5,
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 2,
                ),
                Text(
                  "Desserts",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 180,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => Container(
                      height: 180,
                      width: 157,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            FavouriteScreen.desertsImages[i],
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
                    separatorBuilder: (context, i) => SizedBox(
                      width: 10,
                    ),
                    itemCount: 5,
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
