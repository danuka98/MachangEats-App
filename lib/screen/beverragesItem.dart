import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/categoryUI.dart';
import 'package:uee/styles/constants.dart';
import 'package:uee/screen/restaurants.dart';

class ItemListTabBar extends StatelessWidget {
  const ItemListTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: ItemListTabBarDetails(),
    );
  }
}

class ItemListTabBarDetails extends StatefulWidget {
  const ItemListTabBarDetails({Key? key}) : super(key: key);

  @override
  _ItemListTabBarDetailsState createState() => _ItemListTabBarDetailsState();
}

class _ItemListTabBarDetailsState extends State<ItemListTabBarDetails> {
  final tabList = [
    'Beverrages',
    'Bites',
    'Mains',
    'unique',
  ];

  List<Map> productDetails = [
    {
      "itemName": "Mineral Water (Small)",
      "price": "35.00",
      "itemImage": Image.asset(
        ("asset/images/water.jpg"),
        width: 140,
        height: 120,
      ),
    },
    {
      "itemName": "Mineral Water (Large)",
      "price": "50.00",
      "itemImage": Image.asset(
        ("asset/images/water.jpg"),
        width: 140,
        height: 120,
      ),
    },
    {
      "itemName": "Redbull - CAN 250ml",
      "price": "400.00",
      "itemImage": Image.asset(
        ("asset/images/redbull.png"),
        width: 140,
        height: 120,
      ),
    },
    {
      "itemName": "Fanta-Bottel 300ml",
      "price": "120.00",
      "itemImage": Image.asset(
        ("asset/images/fanta.jpeg"),
        width: 140,
        height: 120,
      ),
    },
    {
      "itemName": "Coke - Bottle 300ml",
      "price": "120.00",
      "itemImage": Image.asset(
        ("asset/images/coke.jpg"),
        width: 140,
        height: 120,
      ),
    }
  ];
  List<Map> bitesDetails = [
    {
      "itemName": "Crispy Chicken",
      "price": "600.00",
      "itemImage": Image.asset(
        ("asset/images/bite1.jpg"),
        width: 140,
        height: 120,
      ),
    },
    {
      "itemName": "Spicy Pork with Mushroom",
      "price": "650.00",
      "itemImage": Image.asset(
        ("asset/images/bite2.jpg"),
        width: 140,
        height: 120,
      ),
    },
    {
      "itemName": "Sausage Platter",
      "price": "800.00",
      "itemImage": Image.asset(
        ("asset/images/bite3.png"),
        width: 140,
        height: 120,
      ),
    },
    {
      "itemName": "Chicken Kochchi Cutlets",
      "price": "2600.00",
      "itemImage": Image.asset(
        ("asset/images/bite4.jpg"),
        width: 140,
        height: 120,
      ),
    },
    {
      "itemName": "Spicy Chicken with Mushroom",
      "price": "600.00",
      "itemImage": Image.asset(
        ("asset/images/bite2.jpg"),
        width: 140,
        height: 120,
      ),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 3.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
            color: kDarkGrey,
          ),
          child: Stack(
            children: [
              Positioned(
                child: Center(
                  child: Image.asset(
                    'asset/images/res2.png',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantsHome()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: kWhite,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: kWhite,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 8,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Machang Kurunegala',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: kWhite,
                        ),
                      ),
                    ),
                    Text(
                      "No.342, Negombo Road, kurunegala",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: kWhite,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        tabBarDetails(),
      ],
    );
  }

  Widget tabBarDetails() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
        ),
        child: DefaultTabController(
          length: tabList.length,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: kWhite,
              flexibleSpace: Column(
                children: [
                  Stack(
                    children: [
                      Positioned.fill(
                        bottom: 1,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.06,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey.withOpacity(0.8),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TabBar(
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.black,
                        indicatorColor: kOrange,
                        indicatorWeight: 3,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        isScrollable: true,
                        labelPadding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.06),
                        tabs: [
                          Tab(text: 'Beverrages',),
                          Tab(text: 'Bites',),
                          Tab(text: 'Mains',),
                          Tab(text: 'Unique',),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: Container(
              child: Stack(
                children: [
                  TabBarView(
                    children: <Widget>[
                      Container(
                        color: kWhite,
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                        child: ListView.builder(
                          itemCount: productDetails.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: MediaQuery.of(context).size.height / 8,
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
                                    spreadRadius: 3,
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width / 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: kWhiteGrey,
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
                                                top: MediaQuery.of(context).size.height * 0.025,
                                                left: MediaQuery.of(context).size.width / 12,
                                              ),
                                              child: Text(
                                                productDetails[index]["itemName"],
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: MediaQuery.of(context).size.width / 12,
                                              ),
                                              child: Text(
                                                'LKR ' + productDetails[index]["price"],
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 35,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 95,
                                                    decoration: BoxDecoration(
                                                      color: kOrange,
                                                      borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(25),
                                                        bottomLeft: Radius.circular(25),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Add To Cart',
                                                        style: GoogleFonts.robotoSlab(
                                                          textStyle: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.bold,
                                                            color: kWhite,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.favorite_border,color: kPink,),
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
                                            left: MediaQuery.of(context).size.width / 1.7),
                                        child: productDetails[index]["itemImage"],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        color: kWhite,
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                        child: ListView.builder(
                          itemCount: productDetails.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: MediaQuery.of(context).size.height / 8,
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
                                    spreadRadius: 3,
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width / 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: kWhiteGrey,
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
                                                top: MediaQuery.of(context).size.height * 0.025,
                                                left: MediaQuery.of(context).size.width / 12,
                                              ),
                                              child: Text(
                                                bitesDetails[index]["itemName"],
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: MediaQuery.of(context).size.width / 12,
                                              ),
                                              child: Text(
                                                'LKR ' + bitesDetails[index]["price"],
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 35,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 95,
                                                    decoration: BoxDecoration(
                                                      color: kOrange,
                                                      borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(25),
                                                        bottomLeft: Radius.circular(25),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Add To Cart',
                                                        style: GoogleFonts.robotoSlab(
                                                          textStyle: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.bold,
                                                            color: kWhite,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.favorite_border,color: kPink,),
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
                                            left: MediaQuery.of(context).size.width / 1.7),
                                        child: bitesDetails[index]["itemImage"],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        color: kWhite,
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                        child: ListView.builder(
                          itemCount: productDetails.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: MediaQuery.of(context).size.height / 8,
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
                                    spreadRadius: 3,
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width / 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: kWhiteGrey,
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
                                                top: MediaQuery.of(context).size.height * 0.025,
                                                left: MediaQuery.of(context).size.width / 12,
                                              ),
                                              child: Text(
                                                productDetails[index]["itemName"],
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: MediaQuery.of(context).size.width / 12,
                                              ),
                                              child: Text(
                                                'LKR ' + productDetails[index]["price"],
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 35,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 95,
                                                    decoration: BoxDecoration(
                                                      color: kOrange,
                                                      borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(25),
                                                        bottomLeft: Radius.circular(25),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Add To Cart',
                                                        style: GoogleFonts.robotoSlab(
                                                          textStyle: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.bold,
                                                            color: kWhite,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.favorite_border,color: kPink,),
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
                                            left: MediaQuery.of(context).size.width / 1.7),
                                        child: productDetails[index]["itemImage"],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        color: kWhite,
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                        child: ListView.builder(
                          itemCount: productDetails.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: MediaQuery.of(context).size.height / 8,
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
                                    spreadRadius: 3,
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width / 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: kWhiteGrey,
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
                                                top: MediaQuery.of(context).size.height * 0.025,
                                                left: MediaQuery.of(context).size.width / 12,
                                              ),
                                              child: Text(
                                                bitesDetails[index]["itemName"],
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: MediaQuery.of(context).size.width / 12,
                                              ),
                                              child: Text(
                                                'LKR ' + bitesDetails[index]["price"],
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 35,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 95,
                                                    decoration: BoxDecoration(
                                                      color: kOrange,
                                                      borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(25),
                                                        bottomLeft: Radius.circular(25),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Add To Cart',
                                                        style: GoogleFonts.robotoSlab(
                                                          textStyle: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.bold,
                                                            color: kWhite,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.favorite_border,color: kPink,),
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
                                            left: MediaQuery.of(context).size.width / 1.7),
                                        child: bitesDetails[index]["itemImage"],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget tabListItems() {
    return Container(
      color: kWhite,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
      child: ListView.builder(
        itemCount: productDetails.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: MediaQuery.of(context).size.height / 8,
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
                  spreadRadius: 3,
                  blurRadius: 6,
                ),
              ],
            ),
            child: Container(
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kWhiteGrey,
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
                              top: MediaQuery.of(context).size.height * 0.025,
                              left: MediaQuery.of(context).size.width / 12,
                            ),
                            child: Text(
                              productDetails[index]["itemName"],
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 12,
                            ),
                            child: Text(
                              'LKR ' + productDetails[index]["price"],
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 35,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 30,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    color: kOrange,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(25),
                                      bottomLeft: Radius.circular(25),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Add To Cart',
                                      style: GoogleFonts.robotoSlab(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: kWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite_border,color: kPink,),
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
                          left: MediaQuery.of(context).size.width / 1.7),
                      child: productDetails[index]["itemImage"],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
