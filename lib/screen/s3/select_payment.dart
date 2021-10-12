import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/s3/AddCard.dart';
import 'package:uee/screen/s3/AddressBody.dart';
import 'package:uee/screen/s3/PaymentSuccess.dart';
import 'package:uee/styles/constants.dart';
import 'package:uee/styles/constants.dart';

class SelectPayment extends StatelessWidget {
  const SelectPayment({Key? key}) : super(key: key);

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
              'Select Payment Options',
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
  late double widthScale, heightScale;

  @override
  Widget build(BuildContext context) {
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;
    return Stack(
      children: [
        Container(
          height: 3 * (MediaQuery.of(context).size.height) / 9.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
            color: kDarkGrey,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: EdgeInsets.only(
                top: heightScale * 10,
                left: widthScale * 10,
              ),
              child: Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.050),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF28606),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
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
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: heightScale * 30,
                  bottom: heightScale * 15
                ),
                child: Container(
                  height: 208,
                  width: 367,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.black87.withOpacity(0.9),
                            kDarkGrey.withOpacity(0.6),
                          ])),
                  child: Stack(
                    children: <Widget>[
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 1,
                  width: widthScale * 80,
                  color: Colors.grey,
                ),
                Text(
                  'OR',
                  style: TextStyle(fontSize: 17.0,color: Colors.black87),
                ),
                Container(
                  height: 1,
                  width: widthScale * 80,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 10,
                ), //SizedBox
                Text(
                  'Cash On Delivery',
                  style: TextStyle(fontSize: 17.0,color: Colors.black87),
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
            Center(
              child: Container(
                padding: EdgeInsets.only(
                  top: heightScale * 20,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: MediaQuery.of(context).size.height * 0.06),
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
                            builder: (context) => PaymentSuccess()),
                      );
                    },
                    child: Center(
                        child: Text(
                          'Process To Payment',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
