import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/s3/payment/CardSelection/CardBody.dart';
import 'package:uee/styles/constants.dart';

class PaymentUnsuccessful extends StatelessWidget {
  const PaymentUnsuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: kWhite,
        elevation: 0,
        title: Row(
          children: [],
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 3 * (MediaQuery.of(context).size.height) / 5,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Payment Unsuccessfully",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 70),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffeb2228), width: 10),
                        borderRadius: BorderRadius.circular(150)),
                    child: Center(
                      child: Text(
                        "Failed",
                        style:
                            TextStyle(color: Color(0xffeb2228), fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: Text(
                  "Dondasdasdsadsadasdade",
                  style: TextStyle(color: kDarkGrey, fontSize: 15),
                ),
              ),
              Center(
                child: Text(
                  "Dondasdasdsadsadasdade",
                  style: TextStyle(color: kDarkGrey, fontSize: 15),
                ),
              ),
              Center(
                child: Text(
                  "Dondasdasdsadsadasdade",
                  style: TextStyle(color: kDarkGrey, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Stack(
            children: [
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
                            MaterialPageRoute(builder: (context) => CardBody()),
                          );
                        },
                        child: Center(
                            child: Text(
                          'Try Again',
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
