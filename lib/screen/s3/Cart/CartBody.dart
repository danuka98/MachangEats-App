import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/s3/payment/AddressBody.dart';
import 'package:uee/styles/constants.dart';
import 'CartCard.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CategoryList()),
                // );
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
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Flexible(
                          child: Dismissible(
                            key: Key(1.toString()),
                            child: CartCard(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Flexible(
                          child: Dismissible(
                            key: Key(1.toString()),
                            child: CartCard(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Flexible(
                          child: Dismissible(
                            key: Key(1.toString()),
                            child: CartCard(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Flexible(
                          child: Dismissible(
                            key: Key(1.toString()),
                            child: CartCard(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Flexible(
                          child: Dismissible(
                            key: Key(1.toString()),
                            child: CartCard(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Flexible(
                          child: Dismissible(
                            key: Key(1.toString()),
                            child: CartCard(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Flexible(
                          child: Dismissible(
                            key: Key(1.toString()),
                            child: CartCard(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Flexible(
                          child: Dismissible(
                            key: Key(1.toString()),
                            child: CartCard(),
                          ),
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
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF6F6F8),
                              border: Border.all(color: Color(0xFF818A99)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Container(
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Total Amount",
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  maxLines: 2,
                                                ),
                                                Text(
                                                  'inclusive of all charges',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text(
                                            'Rs 250.00',
                                            style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
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
                          'Add Delivery Address',
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
