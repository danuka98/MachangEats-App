import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/s3/AddCard.dart';
import 'package:uee/screen/s3/VerifyOTPCard.dart';
import 'package:uee/styles/constants.dart';

class VerifyCard extends StatelessWidget {
  const VerifyCard({Key? key}) : super(key: key);

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
                  MaterialPageRoute(builder: (context) => AddCard()),
                );
              },
            ),
            Text(
              'Verify Card',
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
  late double widthScale, heightScale;
  @override
  Widget build(BuildContext context) {
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;
    return Stack(
      children: [
        Container(
          height: 3 * (MediaQuery.of(context).size.height) / 9,
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
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 208,
              width: 367,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xff595656)),
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
            Container(
              padding: EdgeInsets.only(
                top: heightScale * 40,
                left: widthScale * 15,
                right: widthScale * 15,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kWhite,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'CVV',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: heightScale * 20,
                  bottom: heightScale * 5,
                left: widthScale * 15,
                right: widthScale * 15,
              ),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: heightScale * 5,
                left: widthScale * 15,
                right: widthScale * 15,
              ),
              child: Text(
                'Declaration: scale turnkey outsourcing after multidisciplinary leadership skills. Interactively engineer 24/7 paradigms vis-a-vis cross functional value. Conveniently streamline distinctive bandwidth through vertical imperatives. Progressively drive.',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
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
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CardAuthenticate()),
                    );
                  },
                  child: Center(
                      child: Text(
                        'Send OTP (one time password)',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
