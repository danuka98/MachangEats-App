import 'package:flutter/material.dart';
import 'constants.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: UserProfileDetails(),
    );
  }
}

class UserProfileDetails extends StatefulWidget {
  const UserProfileDetails({ Key? key }) : super(key: key);

  @override
  _UserProfileDetailsState createState() => _UserProfileDetailsState();
}

class _UserProfileDetailsState extends State<UserProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Container( alignment: Alignment.center,
        child: Image.asset('images/machanLogo.png',height: 220,width: 220)
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.001),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.9,
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20,left: 35,right: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(33),
                      color: profileEle,
                      boxShadow: [
                        BoxShadow(
                          color: kDarkGrey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('images/userIcon.png'),
                        ),
                        //Image.asset('images/google.png',height: 60,width: 60,),
                        Text('Janitha Tharaka',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                        Text('janitha613@gmail.com',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('0715291618',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                              IconButton(icon:Icon(Icons.edit) ,color: kOrange ,onPressed: () {  },)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                 Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20,left: 35,right: 35),
                height: MediaQuery.of(context).size.height /15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: profileEle,
                  boxShadow: [
                    BoxShadow(
                      color: kDarkGrey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                          child: Row(
                            children: [
                              IconButton(icon:Icon(Icons.favorite) ,color: kOrange ,onPressed: () {  },),
                              Text('Favourite',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                            ],
                          ),
                        ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 70,left: 35,right: 35),
                height: MediaQuery.of(context).size.height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: profileEle,
                  boxShadow: [
                    BoxShadow(
                      color: kDarkGrey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                          child: Row(
                            children: [
                              IconButton(icon:Icon(Icons.card_giftcard_outlined) ,color: kOrange ,onPressed: () {  },),
                              Text('Premotions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                            ],
                          ),
                        ),
                  ],
                ),
              ),
               Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 70,left: 35,right: 35),
                height: MediaQuery.of(context).size.height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: profileEle,
                  boxShadow: [
                    BoxShadow(
                      color: kDarkGrey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                          child: Row(
                            children: [
                              IconButton(icon:Icon(Icons.event) ,color: kOrange ,onPressed: () {  },),
                              Text('Event',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                            ],
                          ),
                        ),
                  ],
                ),
              ),
              Container(
                 margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 70,left: 35,right: 35),
                height: MediaQuery.of(context).size.height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: profileEle,
                  boxShadow: [
                    BoxShadow(
                      color: kDarkGrey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                          child: Row(
                            children: [
                              IconButton(icon:Icon(Icons.loyalty) ,color: kOrange ,onPressed: () {  },),
                              Text('Loyality',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                            ],
                          ),
                        ),
                  ],
                ),
              ),
               Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 70,left: 35,right: 35),
                height: MediaQuery.of(context).size.height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: profileEle,
                  boxShadow: [
                    BoxShadow(
                      color: kDarkGrey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                          child: Row(
                            children: [
                              IconButton(icon:Icon(Icons.logout) ,color: kOrange ,onPressed: () {  },),
                              Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                            ],
                          ),
                        ),
                  ],
                ),
              ),
              //insert under  
                ],

              ),
             
             
              

            ],
          )
          )
      ],
    );
  }
}