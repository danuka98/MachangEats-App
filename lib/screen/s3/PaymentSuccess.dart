import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uee/screen/restaurants.dart';
import 'package:uee/styles/constants.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

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
  bool value = false;
  late double widthScale, heightScale;
  @override
  Widget build(BuildContext context) {
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;

    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          "Payment Successfully Done!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: widthScale * 20,
            right: widthScale * 20,
            top: heightScale * 40,
            bottom: heightScale * 20,
          ),
          child: Text(
            "Interactively expedite revolutionary ROI after bricks-and-clicks alignments.",
            style: TextStyle(
                color: kDarkGrey,
                fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.4),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff1e9618).withOpacity(0.5), width: 5),
                  borderRadius: BorderRadius.circular(150)),
              child: Center(
                child: Icon(Icons.done,color: Color(0xff1e9618).withOpacity(0.5),size: 60,),
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
            left: widthScale * 40,
            right: widthScale * 40,
            top: heightScale * 30,
          ),
          child: Text(
            "Rs 30.49 Amount deducted from your card",
            style: TextStyle(
              color: kDarkGrey,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: widthScale * 20,
            right: widthScale * 20,
            top: heightScale * 20,
          ),
          child: Text(
            "Declaration: scale turnkey outsourcing after multidisciplinary leadership skills. Interactively engineer 24/7 paradigms vis-a-vis cross functional value. Conveniently streamline distinctive bandwidth through vertical imperatives. Progressively drive.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        Center(
          child: Container(
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
                        builder: (context) => RestaurantsHome()),
                  );
                },
                child: Center(
                    child: Text(
                  'Shop Again',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
