import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/s1/event_screen.dart';
import 'package:uee/screen/s1/loyalty_screen.dart';
import 'package:uee/screen/s1/promotion_screen.dart';
import 'package:uee/styles/constants.dart';
import 'package:uee/screen/favorite.dart';
import 'package:uee/screen/pubLocator.dart';
import 'package:uee/screen/restaurants.dart';
import 'package:uee/screen/tableOrdering.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/categoryImage.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                child: Image.asset(
                  "asset/images/logo.png",
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ],
          ),
          ListDetails()
        ],
      ),
    );
  }
}

class ListDetails extends StatefulWidget {
  ListDetails({Key? key}) : super(key: key);

  @override
  _ListDetailsState createState() => _ListDetailsState();
}

class _ListDetailsState extends State<ListDetails> {

  List categoryImage = [
    "asset/images/cate1.png",
    "asset/images/cate2.png",
    "asset/images/cate3.jpg",
    "asset/images/cate4.jpg",
    "asset/images/cate5.jpg",
    "asset/images/cate6.jpg",
  ];
  List categoryDetails = [
    "Food & Delivery",
    "Table Ordering",
    "Events",
    "Promotions",
    "Pub Locator",
    "Premium"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3.8),
      child: ListView.builder(
        itemCount: categoryDetails.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              switch(index){
                case 0:{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestaurantsHome()),
                  );
                }
                break;
                case 1:{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TableOrderingUI()),
                  );
                }
                break;
                case 2:{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventScreen()),
                  );
                }
                break;
                case 3:{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PromotionScreen()),
                  );
                }
                break;
                case 4:{
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PubLocator()),
                  );
                }
                break;
                case 5:{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoyaltyScreen()),
                  );
                }
                break;
              }
            },
            child: Container(
              child: Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 10,
                  right: MediaQuery.of(context).size.width / 10,
                ),
                height: MediaQuery.of(context).size.height / 7,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 7.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kOrange,
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width / 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kDarkGrey,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: index == 4 ? 60 : 90,
                                width: index == 4 ? 60 : 90,
                                margin: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width / 15),
                                child: Image.asset(categoryImage[index]),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width / 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      categoryDetails[index],
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: kWhite,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
