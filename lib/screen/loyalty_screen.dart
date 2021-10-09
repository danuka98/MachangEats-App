import 'package:flutter/material.dart';

import '../loyalty.dart';

void main() => runApp(MaterialApp(
  home: LoyaltyScreen()
));

class LoyaltyScreen extends StatelessWidget {






  //listview.builder is not working





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
    return Scaffold(
      // backgroundColor: Color(0xFF363A42),
      appBar: AppBar(
        title: Text('Loyalty Points'),
        // centerTitle: true,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
        backgroundColor: Color(0xFF363A42),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: 200,
                  color: Color(0xFF363A42)
                // decoration: BoxDecoration(
                //   color: Color(0xFF363A42),
                // ),
              ),
              Container(
                color: Color(0xFF363A42),
                // decoration: BoxDecoration(
                //   color: Color(0xFF363A42),
                // ),
                child: Container(
                    height: 492,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // image: DecorationImage(
                        //     image: AssetImage('assets/bg.png'),
                        //   fit: BoxFit.cover,
                        // ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                    ),
                  ),

                ),

            ],
          ),






          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                Container(
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
                            padding: const EdgeInsets.fromLTRB(20,20,0,0),
                            child: Text('230 Points',
                              style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                          Text(' available',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,50,5),
                            child: ElevatedButton(onPressed: () {},
                                child: Text('REDEEM',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 1.5)),
                                style: ElevatedButton.styleFrom(primary: Color(0xFFF28606),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12)
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

                SizedBox(height: 80,),

                // ListView.builder(
                //     itemCount: loyalties.length,
                //     itemBuilder: (context, index){
                //       return
                //         Column(
                //           children: [
                //             Text(
                //               loyalties[index].title,
                //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //             ),
                //             SizedBox(height: 10,),
                //             Text(
                //               loyalties[index].description,
                //               style: TextStyle(fontSize: 18,),
                //             ),
                //             SizedBox(height: 20,),
                //           ],
                //         );
                //
                //
                //     }
                // ),




                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What are Loyalty Points?',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'It’s a point system implemented by Machan Eats crew, which you can use to reduce your total bill amount.',
                      style: TextStyle(fontSize: 18,),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20,),


                    Text(
                      'How can you utilize the points?',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Just simply click the REDEEM button',
                      style: TextStyle(fontSize: 18,),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20,),


                    Text(
                      'How can you add more points to your account?',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'They will be automatically added every time you make a purchase order through this app. Every 100 Rupees you spend gives you a total of 10 loyalty points. And when you are spending, a point is worth 5 Rupees. The more you buy, the more you can reduce and save from your total bill.',
                      style: TextStyle(fontSize: 18,),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20,),
                  ],
                ),

              ],
            ),
          ),






        ],
      ),

    );
  }
}