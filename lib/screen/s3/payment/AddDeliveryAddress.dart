import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/s3/payment/AddressBody.dart';
import 'package:uee/styles/constants.dart';

class AddDeliveryAddress extends StatelessWidget {
  const AddDeliveryAddress({Key? key}) : super(key: key);

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
              'Add Delivery Address',
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 2 * (MediaQuery.of(context).size.height) / 4,
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
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        bottom: 10,
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: kWhite,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Address Line 1',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        bottom: 10,
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: kWhite,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Address Line 2',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        bottom: 10,
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: kWhite,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'City',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        bottom: 10,
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: kWhite,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'State',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        bottom: 10,
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: kWhite,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Zip Code',
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Text(
                          'Scan the QR code on the table and order your foods items',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 75),
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
                                builder: (context) => AddressBody()),
                          );
                        },
                        child: Center(
                            child: Text(
                          'Add New Address',
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
