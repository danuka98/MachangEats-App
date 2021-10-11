import 'package:flutter/material.dart';
import 'package:uee/screen/categoryUI.dart';
import 'package:uee/screen/s1/loyalty.dart';
import 'package:uee/styles/constants.dart';


class LoyaltyScreen extends StatefulWidget {

  @override
  State<LoyaltyScreen> createState() => _LoyaltyScreenState();
}

class _LoyaltyScreenState extends State<LoyaltyScreen> {

  late double widthScale, heightScale;

  List<Loyalty> loyalties= [
    Loyalty(
        title: 'What are Loyalty Points?',
        description: 'It’s a point system implemented by Machan Eats crew, which you can use to reduce your total bill amount.'
    ),
    Loyalty(
        title: 'How can you utilize the points?',
        description: 'Just simply click the REDEEM button'
    ),
    Loyalty(
        title: 'How can you add more points to your account?',
        description: 'They will be automatically added every time you make a purchase order through this app. Every 100 Rupees you spend gives you a total of 10 loyalty points. And when you are spending, a point is worth 5 Rupees. The more you buy, the more you can reduce and save from your total bill.'
    )
  ];

  @override
  Widget build(BuildContext context) {
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;

    return Scaffold(
      backgroundColor: kDarkGrey,
      appBar: AppBar(
        title: Text('Loyalty Points'),
        leading: IconButton(
          onPressed: (){
            Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => CategoryList())
            );
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: kDarkGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: widthScale * 15,
                right: widthScale * 15,
                top: heightScale * 10,
                bottom: heightScale * 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [Color(0xFF363A42), Color(0xFF888E99)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 12,
                          offset: Offset(0, 6)
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20,15,0),
                          child: Icon(Icons.loyalty_outlined,
                            color: Colors.white,
                            size: 60,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: heightScale *10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('230 Points',
                                style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Text('available',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,50,5),
                          child: ElevatedButton(onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('REDEEM',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,)),
                              ),
                              style: ElevatedButton.styleFrom(primary: Color(0xFFF28606),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )
                              )
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 10),
                          child: Text('1 pt = 5 LKR',
                            style: TextStyle(fontSize: 16,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: heightScale * 290,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('asset/images/back2.png'),
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: heightScale * 25,
                    left: widthScale * 15,
                    right: widthScale * 15
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What are Loyalty Points?',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: heightScale * 5,
                          bottom: heightScale * 10,
                        ),
                        child: Text(
                          'It’s a point system implemented by Machan Eats crew, which you can use to reduce your total bill amount.',
                          style: TextStyle(fontSize: 18,),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Text(
                        'How can you utilize the points?',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: heightScale * 5,
                          bottom: heightScale * 10,
                        ),
                        child: Text(
                          'Just simply click the REDEEM button',
                          style: TextStyle(fontSize: 18,),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Text(
                        'How can you add more points to your account?',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: heightScale * 5,
                          bottom: heightScale * 5,
                        ),
                        child: Text(
                          'They will be automatically added every time you make a purchase order through this app. Every 100 Rupees you spend gives you a total of 10 loyalty points. And when you are spending, a point is worth 5 Rupees. The more you buy, the more you can reduce and save from your total bill.',
                          style: TextStyle(fontSize: 18,),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}