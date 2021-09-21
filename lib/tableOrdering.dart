import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/categoryUI.dart';
import 'package:uee/constants.dart';

class TableOrderingUI extends StatelessWidget {
  const TableOrderingUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                      'Table Ordering',
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
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 15,
                left: MediaQuery.of(context).size.width * 0.2,
              ),
              width: MediaQuery.of(context).size.width / 1.7,
              child: Text(
                'Scan the QR code on the table and order your foods items',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 25,
              ),
              child: Image.asset('asset/images/qrcode.png'),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.75,
                top: MediaQuery.of(context).size.height / 2.5,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(kOrange),
                ),
                  child: Text(
                    'Scan QR Code',
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
          ],
        ),
      ],
    );
  }
}

