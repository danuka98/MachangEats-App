import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/beverragesItem.dart';
import 'package:uee/screen/categoryUI.dart';
import 'package:uee/screen/s1/event_screen.dart';
import 'package:uee/screen/s1/loyalty_screen.dart';
import 'package:uee/screen/s1/promotion_screen.dart';
import 'package:uee/screen/s2/alert_dialog.dart';
import 'package:uee/screen/s2/getStarted.dart';
import 'package:uee/screen/s2/login.dart';
import 'package:uee/styles/constants.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:uee/screen/favorite.dart';
import 'package:uee/presentation/my_flutter_app_icons.dart';

class RestaurantsHome extends StatefulWidget {
  const RestaurantsHome({Key? key}) : super(key: key);

  @override
  _RestaurantsHomeState createState() => _RestaurantsHomeState();
}

class _RestaurantsHomeState extends State<RestaurantsHome> {
  int _pageIndex = 0;
  //static TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  var addCard = ["1", "2", "3", "4", "5"];
  late double widthScale, heightScale, height;
  bool isRestaurant = false;
  bool isItem = false;
  bool isTap = false;

  List<Map> restaurantDetails = [
    {
      "resName": "Machang Dambulla",
      "resPhone": "066-431-4310",
      "resAddress": "No.34, Mirisgoniyawa Trihgfashdg",
      "resImage": Image.asset(
        ("asset/images/res1.png"),
        width: 140,
        height: 120,
      ),
      "resPickupRange": "28.5km",
    },
    {
      "resName": "Machang Kurunegala",
      "resPhone": "037-222-8520",
      "resAddress": "No.342, Negombo Road, dsadgjhasdajs",
      "resImage": Image.asset(
        ("asset/images/res2.png"),
        width: 140,
        height: 120,
      ),
      "resPickupRange": "40.2km",
    },
    {
      "resName": "Machang Habarana",
      "resPhone": "066-227-0773",
      "resAddress": "Dambulla Road, Habarana",
      "resImage": Image.asset(
        ("asset/images/res3.png"),
        width: 140,
        height: 120,
      ),
      "resPickupRange": "44.7km",
    },
    {
      "resName": "Machang Hedeniya",
      "resPhone": "066-431-4310",
      "resAddress": "No.34, Mirisgoniyawa",
      "resImage": Image.asset(
        ("asset/images/res4.png"),
        width: 140,
        height: 120,
      ),
      "resPickupRange": "28.5km",
    }
  ];

  @override
  Widget build(BuildContext context) {
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
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
            onTap: (value) {
              setState(() {
                _pageIndex = value;
              });
            }),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Scaffold(
        backgroundColor: kDarkGrey,
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 25,
                top: MediaQuery.of(context).size.height / 50,
                bottom: MediaQuery.of(context).size.height / 50,
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryList()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: kWhite,
                      )),
                  Text(
                    'Restaurants',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kWhite,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 2.5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('asset/images/cart.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 60),
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
                  icon: Icon(
                    Icons.search,
                    color: kWhite,
                  ),
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
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 10),
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
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemListTabBar()),
                          );
                        },
                        child: Container(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                18,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                restaurantDetails[index]
                                                    ["resName"],
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
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                18,
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02,
                                          ),
                                          child: Container(
                                            height: 18,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  restaurantDetails[index]
                                                      ["resPhone"],
                                                  style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                      fontSize: 12,
                                                      color: kWhite,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        18,
                                                  ),
                                                  child: Icon(
                                                    Icons.call,
                                                    size: 15,
                                                    color: kOrange,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                18,
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02,
                                          ),
                                          child: Container(
                                            height: 14,
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  width: 140,
                                                  height: 14,
                                                  child: Text(
                                                    restaurantDetails[index]
                                                        ["resAddress"],
                                                    style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                        fontSize: 12,
                                                        color: kWhite,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        80,
                                                  ),
                                                  child: Icon(
                                                    Icons.location_on,
                                                    size: 15,
                                                    color: kOrange,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 50,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.04,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.4,
                                                decoration: BoxDecoration(
                                                  color: kOrange,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(25),
                                                    bottomLeft:
                                                        Radius.circular(25),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Pickup Only \n" +
                                                        restaurantDetails[index]
                                                            ["resPickupRange"],
                                                    style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: kWhite,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 15),
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: kPink,
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
                                Positioned(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        top: 8),
                                    child: restaurantDetails[index]["resImage"],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Scaffold(
        backgroundColor: kDarkGrey,
        appBar: AppBar(
          title: Text(
            'Orders',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kWhite,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryList()));
            },
            icon: Icon(Icons.arrow_back_ios_outlined),
          ),
          toolbarHeight: 70,
          elevation: 0,
          backgroundColor: kDarkGrey,
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: heightScale * 100,
              ),
              child: Container(
                height: height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                    image: DecorationImage(
                      image: AssetImage('asset/images/back2.png'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: heightScale * 40,
                left: widthScale * 10,
                right: widthScale * 10,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return isTap
                      ? Container(
                          height: heightScale * 240,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isTap = !isTap;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: kOrange,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: heightScale * 5,
                                      left: widthScale * 8,
                                      right: widthScale * 8,
                                      bottom: heightScale * 5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Aug 28, 2021',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              '2.55 pm',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'LKR 1550.00',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFF9F9),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 8, 0, 0),
                                          child: Text(
                                            'Order# 210828470',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: kOrange,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 0, 0),
                                      child: Text(
                                        'Completed',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 50,
                                          child: Text(
                                            "Unit Price LKR",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Container(
                                          width: 50,
                                          margin: EdgeInsets.only(right: 20),
                                          child: Text(
                                            'Sub Total LKR',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: heightScale * 40,
                                      child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: 6,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    'Kochchi Pork',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                  Text(
                                                    'x 2',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                  Text(
                                                    '775.00',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                  Text(
                                                    '1550.00',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    Divider(
                                      height: 30,
                                      color: Colors.red,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            'Total',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Text(
                                            'LKR 1550.00 ',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: heightScale * 20,
                                        left: widthScale * 10,
                                        bottom: heightScale * 5,
                                      ),
                                      child: Text(
                                        'Machang Pannipitiya',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              isTap = !isTap;
                            });
                          },
                          child: Container(
                            height: heightScale * 34,
                            decoration: BoxDecoration(
                              color: kOrange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: heightScale * 5,
                                left: widthScale * 8,
                                right: widthScale * 8,
                                bottom: heightScale * 5,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Aug 28, 2021',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '2.55 pm',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'LKR 1550.00',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 8,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                  color: kDarkGrey,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 25,
                        top: MediaQuery.of(context).size.height / 50,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryList()),
                                );
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: kWhite,
                              )),
                          Text(
                            'My Favorite',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kWhite,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.25,
                        top: MediaQuery.of(context).size.height / 20,
                      ),
                      child: Image.asset(
                        'asset/images/logo.png',
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: widthScale * 15,
                      right: widthScale * 8,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isRestaurant = true;
                        });
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kOrange),
                      ),
                      child: Text(
                        'Restaurant',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isRestaurant = false;
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kOrange),
                    ),
                    child: Text(
                      'Items',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: restaurantDetails.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return isRestaurant
                            ? SwipeActionCell(
                                key: ObjectKey(addCard[index]),
                                trailingActions: <SwipeAction>[
                                  SwipeAction(
                                      onTap: (CompletionHandler handler) async {
                                        addCard.removeAt(index);
                                        setState(() {});
                                      },
                                      color: Colors.transparent,
                                      content: Icon(
                                        Icons.delete,
                                        color: kRed,
                                        size: 40,
                                      )),
                                ],
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                  margin: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 15,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.02,
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
                                        right:
                                            MediaQuery.of(context).size.width /
                                                50),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: kDark,
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          child: SizedBox(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.04,
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        18,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        restaurantDetails[index]
                                                            ["resName"],
                                                        style:
                                                            GoogleFonts.roboto(
                                                          textStyle: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: kWhite,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        18,
                                                    top: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.02,
                                                  ),
                                                  child: Container(
                                                    height: 18,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: <Widget>[
                                                        Text(
                                                          restaurantDetails[
                                                                  index]
                                                              ["resPhone"],
                                                          style: GoogleFonts
                                                              .roboto(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 12,
                                                              color: kWhite,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                18,
                                                          ),
                                                          child: Icon(
                                                            Icons.call,
                                                            size: 15,
                                                            color: kOrange,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        18,
                                                    top: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.02,
                                                  ),
                                                  child: Container(
                                                    height: 14,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Container(
                                                          width: 140,
                                                          height: 14,
                                                          child: Text(
                                                            restaurantDetails[
                                                                    index]
                                                                ["resAddress"],
                                                            style: GoogleFonts
                                                                .roboto(
                                                              textStyle:
                                                                  TextStyle(
                                                                fontSize: 12,
                                                                color: kWhite,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                80,
                                                          ),
                                                          child: Icon(
                                                            Icons.location_on,
                                                            size: 15,
                                                            color: kOrange,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  height: 30,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.04,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            4.4,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: kOrange,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    25),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    25),
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "Pickup Only \n" +
                                                                restaurantDetails[
                                                                        index][
                                                                    "resPickupRange"],
                                                            style: GoogleFonts
                                                                .roboto(
                                                              textStyle:
                                                                  TextStyle(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: kWhite,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right:
                                                              widthScale * 15,
                                                        ),
                                                        child: Text(
                                                          'Swipe Right side to delete',
                                                          style: GoogleFonts
                                                              .roboto(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w100,
                                                              color: kWhite,
                                                            ),
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
                                        Positioned(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2,
                                                top: 8),
                                            child: restaurantDetails[index]
                                                ["resImage"],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : SwipeActionCell(
                                key: ObjectKey(addCard[index]),
                                trailingActions: <SwipeAction>[
                                  SwipeAction(
                                      onTap: (CompletionHandler handler) async {
                                        addCard.removeAt(index);
                                        setState(() {});
                                      },
                                      color: Colors.transparent,
                                      content: Icon(
                                        Icons.delete,
                                        color: kRed,
                                        size: 40,
                                      )),
                                ],
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  margin: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 15,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.02,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: kOrange,
                                    boxShadow: [
                                      BoxShadow(
                                        color: kDarkGrey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      ),
                                    ],
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width /
                                                50),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: kWhiteGrey,
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          child: SizedBox(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.025,
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        12,
                                                  ),
                                                  child: Text(
                                                    'Mineral Water (Small)',
                                                    style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        12,
                                                  ),
                                                  child: Text(
                                                    'LKR 35.00',
                                                    style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  height: 35,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        height: 30,
                                                        width: 95,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: kOrange,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    25),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    25),
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Add To Cart',
                                                            style: GoogleFonts
                                                                .robotoSlab(
                                                              textStyle:
                                                                  TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: kWhite,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: widthScale * 5,
                                                        ),
                                                        child: Text(
                                                          'Swipe Right side to delete',
                                                          style: GoogleFonts
                                                              .roboto(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color:
                                                                  Colors.black,
                                                            ),
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
                                        Positioned(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.7),
                                            child: Image.asset(
                                                'asset/images/water.jpg'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Scaffold(
        backgroundColor: kDarkGrey,
        body: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                child: Image.asset('asset/images/logo.png',
                    height: 170, width: 170)),
            Expanded(
                child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.001),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('asset/images/back2.png'),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.1), BlendMode.dstATop),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 30,
                          left: 35,
                          right: 35),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        color: kWhiteGrey,
                        boxShadow: [
                          BoxShadow(
                            color: kDarkGrey.withOpacity(0.5),
                            blurRadius: 3,
                            offset: Offset(0.0, 0.75),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.account_circle,
                            size: 90,
                            color: kOrange,
                          ),
                          //Image.asset('images/google.png',height: 60,width: 60,),
                          Text('Janitha Tharaka',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                          Text('janitha613@gmail.com',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: kDarkGrey.withOpacity(0.5)),
                              )),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 120,
                                  ),
                                  child: Text('0715291618',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: kDarkGrey.withOpacity(0.5)),
                                      )),
                                ),
                                IconButton(
                                  icon: Icon(Icons.edit),
                                  color: kOrange,
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Favorite()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 20,
                            left: 35,
                            right: 35),
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kWhiteGrey,
                          boxShadow: [
                            BoxShadow(
                              color: kDarkGrey.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(0.0, 0.75),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.favorite),
                              color: kOrange,
                              onPressed: () {},
                            ),
                            Text(
                              'Favourite',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kDarkGrey.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PromotionScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 70,
                            left: 35,
                            right: 35),
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kWhiteGrey,
                          boxShadow: [
                            BoxShadow(
                              color: kDarkGrey.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(0.0, 0.75),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.card_giftcard_outlined),
                              color: kOrange,
                              onPressed: () {},
                            ),
                            Text(
                              'Premotions',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kDarkGrey.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EventScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 70,
                            left: 35,
                            right: 35),
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kWhiteGrey,
                          boxShadow: [
                            BoxShadow(
                              color: kDarkGrey.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(0.0, 0.75),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.event),
                              color: kOrange,
                              onPressed: () {},
                            ),
                            Text(
                              'Event',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kDarkGrey.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoyaltyScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 70,
                            left: 35,
                            right: 35),
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kWhiteGrey,
                          boxShadow: [
                            BoxShadow(
                              color: kDarkGrey.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(0.0, 0.75),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.loyalty),
                              color: kOrange,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Favorite()));
                              },
                            ),
                            Text(
                              'Loyality',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kDarkGrey.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        final action = await AlertDialogs.yesCancelDialog(
                            context, 'Do you want to logout ?');
                        if (action == DialogsAction.yes) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GetStarted()),
                          );
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 70,
                            left: 35,
                            right: 35),
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kWhiteGrey,
                          boxShadow: [
                            BoxShadow(
                              color: kDarkGrey.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(0.0, 0.75),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.logout),
                              color: kOrange,
                              onPressed: () {},
                            ),
                            Text(
                              'Logout',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kDarkGrey.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ))
          ],
        ),
      )
    ];
    return IndexedStack(
      index: _pageIndex,
      children: pages,
    );
  }
}
