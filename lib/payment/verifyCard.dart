import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machan_eats/Cart/CartBody.dart';
import 'package:machan_eats/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CardAuthenticate extends StatefulWidget {
  const CardAuthenticate({Key? key}) : super(key: key);

  @override
  _CardAuthenticateState createState() => _CardAuthenticateState();
}

class _CardAuthenticateState extends State<CardAuthenticate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkGrey,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartBody()),
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
      body: CardBody(),
    );
  }

  Widget CardBody() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 50),
          child: Container(
            height: 3 * (MediaQuery.of(context).size.height) / 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              color: kDarkGrey,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 20, bottom: 40),
                  child: Text(
                    'Interactively expedite revolutionary ROI after bricks-and-clicks alignments.',
                    style: TextStyle(
                      color: kWhite,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kWhite),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kWhite),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kWhite),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kWhite),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 30),
                  child: Text(
                    'Autometically displayed OTP',
                    style: TextStyle(color: kWhite),
                  ),
                ),
                CircularPercentIndicator(
                  radius: 100,
                  percent: 1,
                  animation: true,
                  restartAnimation: true,
                  animationDuration: 6000,
                  progressColor: kOrange,
                  center: Container(
                    height: 90,
                    width: 90,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: kWhite),
                    child: Center(
                      child: Text(
                        'Waiting for the OTP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Don't Receive OTP?"),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ElevatedButton(onPressed: () {}, child: Text('Resend')),
            )
          ],
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
