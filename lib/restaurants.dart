import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/categoryUI.dart';
import 'package:uee/constants.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:uee/presentation/my_flutter_app_icons.dart';


class RestaurantsHome extends StatefulWidget {
  const RestaurantsHome({Key? key}) : super(key: key);

  @override
  _RestaurantsHomeState createState() => _RestaurantsHomeState();
}

class _RestaurantsHomeState extends State<RestaurantsHome>{
  int _pageIndex = 0;
  //static TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: kDarkGrey,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: kDarkGrey,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryList()),
                );
              },
            ),
            Text('Restaurants',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.5),
              child: IconButton(
                onPressed: (){},
                icon: Image.asset('asset/images/cart.png'),
              ),
            ),
          ],
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: kDarkGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Orders',
              backgroundColor: kDarkGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: kDarkGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
              backgroundColor: kDarkGrey,
            ),
          ],
          selectedLabelStyle: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          currentIndex: _pageIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
      body: RestaurantsDetails(),
    );
  }
}

class RestaurantsDetails extends StatefulWidget {
  const RestaurantsDetails({Key? key}) : super(key: key);

  @override
  _RestaurantsDetailsState createState() => _RestaurantsDetailsState();
}

class _RestaurantsDetailsState extends State<RestaurantsDetails> {
  List<Map> restaurantDetails = [
    {
      "resName": "Machang Dambulla",
      "resPhone": "066-431-4310",
      "resAddress": "No.34, Mirisgoniyawa Tri..",
      "resImage": Image.asset(("asset/images/res1.png"),width: 140, height: 120,),
      "resPickupRange": "28.5km",
    },
    {
      "resName": "Machang Kurunegala",
      "resPhone": "037-222-8520",
      "resAddress": "No.342, Negombo Road, ...",
      "resImage": Image.asset(("asset/images/res2.png"),width: 140, height: 120,),
      "resPickupRange": "40.2km",
    },
    {
      "resName": "Machang Habarana",
      "resPhone": "066-227-0773",
      "resAddress": "Dambulla Road, Habarana",
      "resImage": Image.asset(("asset/images/res3.png"),width: 140, height: 120,),
      "resPickupRange": "44.7km",
    },
    {
      "resName": "Machang Hedeniya",
      "resPhone": "066-431-4310",
      "resAddress": "No.34, Mirisgoniyawa",
      "resImage": Image.asset(("asset/images/res4.png"),width: 140, height: 120,),
      "resPickupRange": "28.5km",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 30,right: 30, bottom: 60),
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height / 45,
            vertical: MediaQuery.of(context).size.width * 0.005,
          ),
          decoration: BoxDecoration(
            color: kWhite.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            style: TextStyle(color: kWhite),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              icon: Icon(Icons.search,color: kWhite,),
              hintText: 'Search',
              hintStyle: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: kWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.separated(
                itemCount: restaurantDetails.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: MediaQuery.of(context).size.height / 5,
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 15,
                      vertical: MediaQuery.of(context).size.width * 0.02,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kOrange,
                      boxShadow: [
                        BoxShadow(
                          color: kDarkGrey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kDark,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height * 0.04,
                                      left: MediaQuery.of(context).size.width / 18,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          restaurantDetails[index]["resName"],
                                          style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: kWhite,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width / 18,
                                      top: MediaQuery.of(context).size.width * 0.02,
                                    ),
                                    child: Container(
                                      height: 18,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            restaurantDetails[index]["resPhone"],
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                fontSize: 12,
                                                color: kWhite,
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.call),
                                            color: kOrange,
                                            iconSize: 15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width / 18,
                                      top: MediaQuery.of(context).size.width * 0.02,
                                    ),
                                    child: Container(
                                      height:14,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            restaurantDetails[index]["resAddress"],
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                fontSize: 12,
                                                color: kWhite,
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.location_on),
                                            color: kOrange,
                                            iconSize: 15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width:95,
                                        decoration: BoxDecoration(
                                          color: kOrange,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(25),
                                            bottomLeft: Radius.circular(25),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Pickup Only \n" + restaurantDetails[index]["resPickupRange"],
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: kWhite,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.asset("asset/images/heart.png"),
                                        iconSize: 15,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2,top: 8),
                              child: restaurantDetails[index]["resImage"],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

