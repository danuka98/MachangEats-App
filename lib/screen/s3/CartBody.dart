import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/restaurants.dart';
import 'package:uee/screen/s3/AddressBody.dart';
import 'package:uee/styles/constants.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: kDarkGrey,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RestaurantsHome()),
                );
              },
            ),
            Text(
              'Cart',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: tableDetails(),
    );
  }
}

class tableDetails extends StatefulWidget {
  const tableDetails({Key? key}) : super(key: key);

  @override
  _tableDetailsState createState() => _tableDetailsState();
}

class _tableDetailsState extends State<tableDetails> {
  late double widthScale, heightScale;

  @override
  Widget build(BuildContext context) {
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;

    return Stack(
      children: [
        Container(
          height: heightScale * 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
            color: kDarkGrey,
          ),
        ),
        Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: heightScale * 250,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: heightScale * 5,
                      );
                    },
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: kWhiteGrey,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.9),
                                    blurRadius: 4,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF6F6F8),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'asset/images/water.jpg'),
                                                          fit: BoxFit.fill),
                                                    ),
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width *
                                            0.05),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Chines Noodles",
                                                style: TextStyle(
                                                  fontFamily: 'RobotoCondensed',
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                                maxLines: 2,
                                              ),
                                              Text(
                                                'Medium Posion',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      SizedBox(
                                                        height:
                                                            MediaQuery.of(context)
                                                                    .size
                                                                    .height *
                                                                0.035,
                                                        width:
                                                            MediaQuery.of(context)
                                                                    .size
                                                                    .width *
                                                                0.15,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color(0xFFF6F6F8),
                                                            border: Border.all(
                                                                color: Color(
                                                                    0xFF818A99)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(7),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              '1',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'RobotoCondensed',
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            MediaQuery.of(context)
                                                                    .size
                                                                    .height *
                                                                0.035,
                                                        width:
                                                            MediaQuery.of(context)
                                                                    .size
                                                                    .width *
                                                                0.15,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color(0xFFF6F6F8),
                                                            border: Border.all(
                                                                color: Color(
                                                                    0xFF818A99)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(7),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Rs. 50',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'RobotoCondensed',
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF6F6F8),
                                  border: Border.all(color: Color(0xFF818A99)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 20.0),
                                            child: Container(
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Total Amount",
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 20,
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                      maxLines: 2,
                                                    ),
                                                    Text(
                                                      'inclusive of all charges',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .caption,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 100,
                                          ),
                                          Container(
                                            child: Center(
                                              child: Text(
                                                'Rs 250.00',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: widthScale * 70,
                          right: widthScale * 70,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFF28606),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddressBody()),
                              );
                            },
                            child: Center(
                                child: Text(
                                  'Check Out',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
