import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/s3/AddressBody.dart';
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
              icon: Icon(Icons.arrow_back_ios,size: 22,),
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
                  fontSize: 18,
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
        Padding(
          padding: EdgeInsets.only(
            left: widthScale * 10,
            right: widthScale * 10,
            top: heightScale * 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kWhiteGrey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: 'Address Line 1',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: heightScale *5,
                  bottom: heightScale *5,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: kWhiteGrey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    hintText: 'Address Line 2',
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kWhiteGrey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: 'City',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: heightScale *5,
                  bottom: heightScale *5,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: kWhiteGrey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    hintText: 'State',
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kWhiteGrey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Zip Code',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: heightScale * 20,
                  bottom: heightScale * 5
                ),
                child: Divider(
                  thickness: 2,
                ),
              ),
              Text(
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
              Padding(
                padding: EdgeInsets.only(
                  top: heightScale * 25,
                ),
                child: Center(
                  child: Container(
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
