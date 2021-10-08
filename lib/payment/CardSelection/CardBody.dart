import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machan_eats/Cart/CartBody.dart';
import 'package:machan_eats/payment/AddDeliveryAddress.dart';
import 'package:machan_eats/payment/AddressBody.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:machan_eats/payment/CardSelection/AddCard.dart';
import 'package:machan_eats/payment/CardSelection/VerifyCard.dart';
import '../../constants.dart';

class CardBody extends StatelessWidget {
  const CardBody({Key? key}) : super(key: key);

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
                  MaterialPageRoute(builder: (context) => AddressBody()),
                );
              },
            ),
            Text(
              'Select Paymet Card',
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
  bool value = false;
  final List<Color> rightColorList = [
    Colors.red,
    Colors.green,
    Colors.pink,
  ];
  final List<Color> leftColorList = [
    Colors.amber,
    Colors.orange,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 3 * (MediaQuery.of(context).size.height) / 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
            color: kDarkGrey,
          ),
          child: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 16, right: 6),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 150,
                          width: 258,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  rightColorList[index],
                                  leftColorList[index],
                                ],
                              )),
                          child: Stack(
                            children: <Widget>[
                              // Positioned(
                              //   bottom: 0,
                              //   right: 0,
                              //   child: SvgPicture.asset(
                              //     'assets/images/CardUnder.svg',
                              //     width: 258,
                              //     height: 150,
                              //   ),
                              // ),
                              Positioned(
                                left: 21.75,
                                top: 32,
                                child: Text(
                                  "CARD NUMBER",
                                  style: GoogleFonts.inter(
                                      fontSize: 10.5,
                                      fontWeight: FontWeight.w400,
                                      color: kWhite),
                                ),
                              ),
                              Positioned(
                                left: 21.75,
                                top: 48,
                                child: Text(
                                  "**** **** **** 1258",
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: kWhite),
                                ),
                              ),
                              Positioned(
                                right: 15,
                                top: 20,
                                child: SvgPicture.asset(
                                  'assets/images/Group.svg',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              Positioned(
                                left: 21.75,
                                bottom: 40,
                                child: Text(
                                  "CARD HOLDER",
                                  style: GoogleFonts.inter(
                                      fontSize: 10.5,
                                      fontWeight: FontWeight.w400,
                                      color: kWhite),
                                ),
                              ),
                              Positioned(
                                left: 21.75,
                                bottom: 21,
                                child: Text(
                                  "S.A.S.D Wijesinghe",
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      color: kWhite),
                                ),
                              ),
                              Positioned(
                                left: 185,
                                bottom: 35,
                                child: Text(
                                  "EXPIRY DATE",
                                  style: GoogleFonts.inter(
                                      fontSize: 7.875,
                                      fontWeight: FontWeight.w400,
                                      color: kWhite),
                                ),
                              ),
                              Positioned(
                                left: 195,
                                bottom: 21,
                                child: Text(
                                  "XX/XX",
                                  style: GoogleFonts.inter(
                                      fontSize: 10.5,
                                      fontWeight: FontWeight.w800,
                                      color: kWhite),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 170,
                left: 20,
                child: Container(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.055),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF28606),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddCard()),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Add New Card   +',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 235,
                left: 22,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 208,
                  width: 367,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.redAccent.withOpacity(0.3),
                            Colors.amber.withOpacity(0.2),
                          ])),
                  child: Stack(
                    children: <Widget>[
                      // Positioned(
                      //   bottom: 0,
                      //   right: 0,
                      //   child: Padding(
                      //     padding: EdgeInsets.only(
                      //       left: 5,
                      //       bottom: 5,
                      //     ),
                      //     child: SvgPicture.asset(
                      //       'assets/images/CardUnder.svg',
                      //       width: 367,
                      //       height: 208,
                      //     ),
                      //   ),
                      // ),
                      Positioned(
                        left: 31,
                        top: 44,
                        child: Text(
                          "CARD NUMBER",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: kWhite),
                        ),
                      ),
                      Positioned(
                        left: 31,
                        top: 66,
                        child: Text(
                          "**** **** **** 1258",
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: kWhite),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 20,
                        child: SvgPicture.asset(
                          'assets/images/Group.svg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Positioned(
                        left: 31,
                        bottom: 55,
                        child: Text(
                          "CARD HOLDER",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: kWhite),
                        ),
                      ),
                      Positioned(
                        left: 31,
                        bottom: 29,
                        child: Text(
                          "S.A.S.D Wijesinghe",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: kWhite),
                        ),
                      ),
                      Positioned(
                        left: 250,
                        bottom: 55,
                        child: Text(
                          "EXPIRY DATE",
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: kWhite),
                        ),
                      ),
                      Positioned(
                        left: 280,
                        bottom: 29,
                        child: Text(
                          "XX/XX",
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: kWhite),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          // margin: EdgeInsets.only(top: 50),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                top: 20,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ), //SizedBox
                    Text(
                      'Cash On Delivery',
                      style: TextStyle(fontSize: 17.0),
                    ), //Text
                    SizedBox(width: 10), //SizedBox
                    Checkbox(
                      value: this.value,
                      onChanged: (bool? value) {
                        setState(() {
                          value = true;
                        });
                      },
                    ), //Checkbox
                  ], //<Widget>[]
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.065),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF28606),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerifyCard()),
                          );
                        },
                        child: Center(
                            child: Text(
                          'Select Payment Method',
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
    );
  }
}
