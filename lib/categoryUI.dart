import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/constants.dart';
import 'package:uee/tableOrdering.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3.8),
      child: ListView(
        children: [
          Container(
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
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 15),
                            child: Image.asset('asset/images/cate1.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Food & Delivery',
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TableOrderingUI()),
              );
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
                            Container(
                              margin: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width / 15),
                              child: Image.asset('asset/images/cate2.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width / 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Table Ordering',
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
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
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 15),
                            child: Image.asset('asset/images/cate3.jpg'),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 5.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Events',
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
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
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 15),
                            child: Image.asset('asset/images/cate4.jpg'),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 7.5),
                            child: Text(
                              'Promotions',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: kWhite,
                                ),
                              ),
                              textAlign: TextAlign.center,
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
          Container(
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
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 7),
                            child: Image.asset('asset/images/cate5.jpg',
                                width: MediaQuery.of(context).size.width / 12,height: MediaQuery.of(context).size.height / 8),

                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 5),
                            child: Text(
                              'Pub Locator',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: kWhite,
                                ),
                              ),
                              textAlign: TextAlign.center,
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
          Container(
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
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 70),
                            child: Image.asset('asset/images/cate6.jpg'),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 10),
                            child: Text(
                              'Premium',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: kWhite,
                                ),
                              ),
                              textAlign: TextAlign.center,
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
    );
  }
}
