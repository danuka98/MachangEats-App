import 'package:flutter/material.dart';
import 'constants.dart';
import 'login.dart';
 
class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/GetStarted.png'),fit: BoxFit.cover)
          
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
          child: Image.asset('images/machanLogo.png'),
        ),
         Padding(
           padding: const EdgeInsets.only(
             top:100,
             bottom: 60
           ),
           child: Container(
            height: 50,
            width: 170,
            margin: EdgeInsets.only(bottom: 20,top:25),
            child: RaisedButton(
              elevation: 5.0,
              color: Color(0xFFF28606),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>LoginPage()),);
              },
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
        ),
         ),
         Text("Powered By Blackcode Team",style: TextStyle(fontSize: 15,color: kOrange),)
      ],
    );
  }
}

 
