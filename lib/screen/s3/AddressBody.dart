import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/s3/AddDeliveryAddress.dart';
import 'package:uee/screen/s3/CartBody.dart';
import 'package:uee/screen/s3/select_payment.dart';
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
              'Select Your Deliver Address',
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
  late double widthScale, heightScale;

  @override
  Widget build(BuildContext context) {
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;

    return Stack(
      children: [
        Container(
          height: 2 * (MediaQuery.of(context).size.height) / 6,
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
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: heightScale * 300,
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
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 30),
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
                                      color: kWhiteGrey,
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
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
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
                                      color: kWhiteGrey,
                                      boxShadow: [
                                        BoxShadow(
                                          color: kDarkGrey.withOpacity(0.5),
                                          blurRadius: 3,
                                          offset: Offset(0.0, 0.75),
                                        ),
                                      ],
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
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ),
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
                                      color: kWhiteGrey,
                                      boxShadow: [
                                        BoxShadow(
                                          color: kDarkGrey.withOpacity(0.5),
                                          blurRadius: 3,
                                          offset: Offset(0.0, 0.75),
                                        ),
                                      ],
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
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
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
                                      color: kWhiteGrey,
                                      boxShadow: [
                                        BoxShadow(
                                          color: kDarkGrey.withOpacity(0.5),
                                          blurRadius: 3,
                                          offset: Offset(0.0, 0.75),
                                        ),
                                      ],
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
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddDeliveryAddress()));
                                  },
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.2,
                                    width: MediaQuery.of(context).size.height * 0.2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: kWhiteGrey,
                                        boxShadow: [
                                          BoxShadow(
                                            color: kDarkGrey.withOpacity(0.5),
                                            blurRadius: 3,
                                            offset: Offset(0.0, 0.75),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 55),
                                            Center(
                                              child: Icon(
                                                Icons.add_circle_outline,
                                                color: Colors.black87,
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.18,
                                              child: Center(
                                                child: Text(
                                                  'Add New Address',
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 15,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
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
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                top: heightScale * 40
              ),
              child: Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      width: MediaQuery.of(context).size.width * 0.5,
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
                        MaterialPageRoute(builder: (context) => SelectPayment()),
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
            )
          ],
        ),
      ],
    );
  }
}
