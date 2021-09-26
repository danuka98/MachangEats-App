import 'package:flutter/material.dart';
 
class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/GetStarted.png'),fit: BoxFit.cover)
          
        ),
      ),
    );
  }
}

 
