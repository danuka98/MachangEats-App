import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: OrderScreen(),
));

class OrderScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF363A42),
      appBar: AppBar(
        title: Text('Orders'),
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
                  height: 250,
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
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                Card(
                  color: Color(0xFFF28606),
                  // shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [


                          Padding(
                            padding: const EdgeInsets.fromLTRB(15,10,0,0),
                            child: Text(
                              'Sep 5, 2021',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,15,15,0),
                            child: Text(
                              'LKR 7800.00',
                              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),

                        ],
                      ),Padding(
                        padding: const EdgeInsets.fromLTRB(15,0,0,10),
                        child: Text(
                              '7.00 pm',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                      ),



                    ],
                  ),
                ),


                SizedBox(height: 30,),





                Container(
                  // height: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFFF28606),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [


                          Padding(
                            padding: const EdgeInsets.fromLTRB(15,10,0,0),
                            child: Text(
                              'Aug 28, 2021',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,20,15,0),
                            child: Text(
                              'LKR 1550.00',
                              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15,0,0,10),
                        child: Text(
                          '2.55 pm',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),


                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF9F9),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                    // boxShadow: [
                    //   BoxShadow(
                    //       blurRadius: 12,
                    //       offset: Offset(0, 6)
                    //   )
                    // ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,8,0,0),
                            child: Text(
                              'Order# 210828470',
                              style: TextStyle(fontSize: 18, color: Color(0xFFF28606)),
                            ),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,8,0,0),
                        child: Text(
                          'Completed',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 50,
                            child: Text(
                              "Unit Price LKR",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(width: 50,),
                          Container(
                            width: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              'Sub Total LKR',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Kochchi Pork',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'x 2',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            '775.00',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            '1550.00',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(
                        height: 30, color: Colors.red,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Total',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              'LKR 1550.00 ',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 200,
                            margin: EdgeInsets.fromLTRB(0,15,0,10),
                            child: Image.network('data:image/jpeg;base64,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')
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Machang Pannipitiya',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),




                SizedBox(height: 30,),
                Card(
                  color: Color(0xFFF28606),
                  // shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [


                          Padding(
                            padding: const EdgeInsets.fromLTRB(15,10,0,0),
                            child: Text(
                              'Aug 2, 2021',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,20,15,0),
                            child: Text(
                              'LKR 2000.00',
                              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15,0,0,10),
                        child: Text(
                          '5.00 pm',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),





              ],
            ),
          ),






        ],
      ),

    );
  }
}