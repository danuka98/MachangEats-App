import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/categoryUI.dart';
import 'package:uee/styles/constants.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';
import 'package:uee/screen/restaurants.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  late double widthScale, heightScale;
  bool isRestaurant = false;
  bool isItem = false;

  List<Map> restaurantDetails = [
    {
      "resName": "Machang Dambulla",
      "resPhone": "066-431-4310",
      "resAddress": "No.34, Mirisgoniyawa Triasdfsdsad",
      "resImage": Image.asset(("asset/images/res1.png"),width: 140, height: 120,),
      "resPickupRange": "28.5km",
    },
    {
      "resName": "Machang Kurunegala",
      "resPhone": "037-222-8520",
      "resAddress": "No.342, Negombo Road, asdfsadsa",
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
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;

    return Scaffold(
      body: SafeArea(
        child: favoriteDetails(),
      ),
    );
  }

  Widget favoriteDetails(){
    var addCard =["1","2","3","4","5"];

    return Column(
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
                            MaterialPageRoute(builder: (context) => CategoryList()),
                          );
                        },
                        icon: Icon(Icons.arrow_back_ios,color: kWhite,)
                    ),
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
                  top:  MediaQuery.of(context).size.height / 20,
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
                onPressed: (){
                  isRestaurant = !isRestaurant;
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(kOrange),
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
              onPressed: (){
                isItem = !isItem;
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(kOrange),
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
                itemBuilder: (BuildContext context, int index){
                  return isRestaurant ? Container(
                    padding: EdgeInsets.only(
                      top: heightScale * 20,
                    ),
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
                          spreadRadius: 2,
                          blurRadius: 4,
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
                                      'Mineral Water (Small)',
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
                                      'LKR 35.00',
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
                              child: Image.asset('asset/images/water.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ) : SwipeActionCell(
                    key: ObjectKey(addCard[index]),
                    trailingActions: <SwipeAction>[
                      SwipeAction(
                          onTap: (CompletionHandler handler) async{
                            addCard.removeAt(index);
                            setState(() {});
                          },
                          color: Colors.transparent,
                          content: Icon(
                            Icons.delete,
                            color: kRed,
                            size: 40,
                          )
                      ),
                    ],
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
                                          crossAxisAlignment: CrossAxisAlignment.end,
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
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: MediaQuery.of(context).size.width / 18,
                                              ),
                                              child: Icon(Icons.call ,size: 15,color: kOrange,),
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
                                            Container(
                                              width: 140,
                                              height: 14,
                                              child: Text(
                                                restaurantDetails[index]["resAddress"],
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: kWhite,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: MediaQuery.of(context).size.width / 80,
                                              ),
                                              child: Icon(Icons.location_on,size: 15, color: kOrange,),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      child: Row(
                                        //crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height * 0.04,
                                            width: MediaQuery.of(context).size.width / 4.4,
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
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: widthScale * 15,
                                            ),
                                            child: Text(
                                              'Swipe Right side to delete',
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w100,
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
                                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2,top: 8),
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
    );
  }
}
