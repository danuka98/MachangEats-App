import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/s3/Cart/CartBody.dart';
import 'package:uee/screen/s3/payment/AddDeliveryAddress.dart';
import 'package:uee/screen/s3/payment/CardSelection/CardBody.dart';
import 'package:uee/styles/constants.dart';

class AddressBody extends StatelessWidget {
  const AddressBody({Key? key}) : super(key: key);

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
                  MaterialPageRoute(builder: (context) => CartBody()),
                );
              },
            ),
            Text(
              'Cart',
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
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF28606),
                                      border:
                                          Border.all(color: Color(0xFF818A99)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 35),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.18,
                                            padding: EdgeInsets.only(left: 5),
                                            child: Center(
                                              child: Text(
                                                'SLIIT Malabe Campus, New Kandy Rd, Malabe 10115',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0XFFfffff0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Icon(
                                              Icons.check_circle_outline,
                                              color: Color(0XFFfffff0),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFfffff0),
                                      border:
                                          Border.all(color: Color(0xFF818A99)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 35),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.18,
                                            padding: EdgeInsets.only(left: 5),
                                            child: Center(
                                              child: Text(
                                                'No 87/5, Madagalla, Polpithigama',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0XFF818a99),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Icon(
                                              Icons.check_circle_outline,
                                              color: Color(0XFF818a99),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFfffff0),
                                      border:
                                          Border.all(color: Color(0xFF818A99)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 35),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.18,
                                            padding: EdgeInsets.only(left: 5),
                                            child: Center(
                                              child: Text(
                                                'No 25 Mihidu Mawatha Kururnegala',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0XFF818a99),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Icon(
                                              Icons.check_circle_outline,
                                              color: Color(0XFF818a99),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFfffff0),
                                      border:
                                          Border.all(color: Color(0xFF818A99)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 35),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.18,
                                            padding: EdgeInsets.only(left: 5),
                                            child: Center(
                                              child: Text(
                                                '415/1, Yayagoda, Debarawewa, Thissamaharaaya,',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0XFF818a99),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Icon(
                                              Icons.check_circle_outline,
                                              color: Color(0XFF818a99),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFfffff0),
                                      border:
                                          Border.all(color: Color(0xFF818A99)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 35),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.18,
                                            padding: EdgeInsets.only(left: 5),
                                            child: Center(
                                              child: Text(
                                                'SLIIT Malabe Campus, New Kandy Rd, Malabe 10115',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0XFF818a99),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Icon(
                                              Icons.check_circle_outline,
                                              color: Color(0XFF818a99),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF6F6F8),
                                      border:
                                          Border.all(color: Color(0xFF818A99)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFfffff0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddDeliveryAddress()),
                                        );
                                      },
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 55),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.18,
                                              child: Center(
                                                child: Text(
                                                  'Add New Address',
                                                  style: TextStyle(
                                                    color: Color(0xFF818A99),
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Icon(
                                                Icons.add_circle_outline,
                                                color: Color(0xFF818A99),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
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
                            MaterialPageRoute(builder: (context) => CardBody()),
                          );
                        },
                        child: Center(
                            child: Text(
                          'Select Delivery Address',
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
