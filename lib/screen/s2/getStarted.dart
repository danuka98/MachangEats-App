import 'package:flutter/material.dart';
import 'package:uee/screen/s2/login.dart';
import 'package:uee/styles/constants.dart';
 
class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  late double widthScale, heightScale;

  @override
  Widget build(BuildContext context) {
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/images/back3.png'),
              fit: BoxFit.cover
          ),
        ),
        child: logoImage(),
      ),
    );  
  }

  Widget logoImage(){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: 20
          ),
          child: Image.asset('asset/images/logo.png'),
        ),
         Padding(
           padding: EdgeInsets.only(
             top: heightScale * 90,
             bottom: heightScale * 25
           ),
           child: Container(
            margin: EdgeInsets.only(bottom: 20,top:25),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(kOrange),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                  ),
                )
              ),
              onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=>LoginPage()),
                 );
              },
              child: Padding(
                padding: EdgeInsets.only(
                  top: heightScale * 6,
                  bottom: heightScale *6,
                  left: widthScale * 10,
                  right: widthScale * 10,
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ),
         ),
         Text("Powered By Blackcode Team",style: TextStyle(fontSize: 15,color: kOrange,fontWeight: FontWeight.w400,),)
      ],
    );
  }
}

 
