import 'package:flutter/material.dart';

import '../promotion.dart';

void main() => runApp(MaterialApp(
  home: PromotionScreen(),
));

class PromotionScreen extends StatelessWidget {

  List<Promotion> promotions= [
    Promotion(
        title: 'New Member Discount',
        description: 'Reduce your total order amount by 20% by adding this propmo code. This offer can be applied only once.'
    ),
    Promotion(
        title: 'Loyalty 100',
        description: 'For orders above LKR 5000.00, win a total of 100 loyalty points free! This promotion is available until 31st of November. '
    ),
    Promotion(
        title: 'Cash Bonanza',
        description: 'Enjoy a cashback of 30% on all the orders above LKR 5000.00. This is valid until 5th October. Hurry up!'
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF363A42),
      appBar: AppBar(
        title: Text('Promotions'),
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
                  height: 90,
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
                  height: 480,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                  ),

                ),
              ),
            ],
          ),



          ListView.builder(
              itemCount: promotions.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    children: [



                      Card(
                        // shadowColor: Colors.red,
                        elevation: 8,
                        color: Color(0xFF072C3D).withOpacity(0.85),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                promotions[index].title,

                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                promotions[index].description,
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: ElevatedButton(onPressed: () {},
                                  child: Text('Add Promo Code'),
                                  style: ElevatedButton.styleFrom(primary: Color(0xFFF28606),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12)
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),


                      // SizedBox(height: 20,),

                      // Card(
                      //   // shadowColor: Colors.red,
                      //   elevation: 8,
                      //   color: Color(0xFF315074).withOpacity(0.8),
                      //   clipBehavior: Clip.antiAlias,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(24),
                      //   ),
                      //   child: Column(
                      //     children: [
                      //
                      //       Padding(
                      //         padding: EdgeInsets.all(10),
                      //         child: Text(
                      //           'Loyalty 100',
                      //
                      //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.only(left: 10),
                      //         child: Text(
                      //           'For orders above LKR 5000.00, win a total of 100 loyalty points free! This promotion is available until 31st of November. ',
                      //           style: TextStyle(fontSize: 16, color: Colors.white),
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.only(bottom: 10),
                      //         child: ElevatedButton(onPressed: () {},
                      //             child: Text('Add Promo Code'),
                      //             style: ElevatedButton.styleFrom(primary: Color(0xFFF28606),
                      //                 shape: RoundedRectangleBorder(
                      //                     borderRadius: BorderRadius.circular(12)
                      //                 )
                      //             )
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      //
                      //
                      // SizedBox(height: 20,),

                      // Card(
                      //   // shadowColor: Colors.red,
                      //   elevation: 8,
                      //   color: Color(0xFF315074).withOpacity(0.8),
                      //   clipBehavior: Clip.antiAlias,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(24),
                      //   ),
                      //   child: Column(
                      //     children: [
                      //
                      //       Padding(
                      //         padding: EdgeInsets.all(10),
                      //         child: Text(
                      //           'Cash Bonanza',
                      //
                      //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.only(left: 10),
                      //         child: Text(
                      //           'Enjoy a cashback of 30% on all the orders above LKR 5000.00. This is valid until 5th October. Hurry up!',
                      //           style: TextStyle(fontSize: 16, color: Colors.white),
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.only(bottom: 10),
                      //         child: ElevatedButton(onPressed: () {},
                      //             child: Text('Add Promo Code'),
                      //             style: ElevatedButton.styleFrom(primary: Color(0xFFF28606),
                      //                 shape: RoundedRectangleBorder(
                      //                     borderRadius: BorderRadius.circular(12)
                      //                 )
                      //             )
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),


                    ],
                  ),
                );
              }
          )






          // Padding(
          //   padding: const EdgeInsets.all(17.0),
          //   child: Column(
          //     children: [
          //       SizedBox(height: 80,),
          //
          //
          //       Card(
          //         // shadowColor: Colors.red,
          //         elevation: 8,
          //         color: Color(0xFF072C3D).withOpacity(0.85),
          //         clipBehavior: Clip.antiAlias,
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(24),
          //         ),
          //         child: Column(
          //           children: [
          //
          //             Padding(
          //               padding: EdgeInsets.all(10),
          //               child: Text(
          //                 'New Member Discount',
          //
          //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          //               ),
          //             ),
          //             Padding(
          //               padding: EdgeInsets.only(left: 10),
          //               child: Text(
          //                 'Reduce your total order amount by 20% by adding this propmo code. This offer can be applied only once.',
          //                 style: TextStyle(fontSize: 16, color: Colors.white),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(bottom: 10),
          //               child: ElevatedButton(onPressed: () {},
          //                   child: Text('Add Promo Code'),
          //                   style: ElevatedButton.styleFrom(primary: Color(0xFFF28606),
          //                     shape: RoundedRectangleBorder(
          //                       borderRadius: BorderRadius.circular(12)
          //                     )
          //               )
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //
          //
          //       SizedBox(height: 20,),
          //
          //       Card(
          //         // shadowColor: Colors.red,
          //         elevation: 8,
          //         color: Color(0xFF315074).withOpacity(0.8),
          //         clipBehavior: Clip.antiAlias,
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(24),
          //         ),
          //         child: Column(
          //           children: [
          //
          //             Padding(
          //               padding: EdgeInsets.all(10),
          //               child: Text(
          //                 'Loyalty 100',
          //
          //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          //               ),
          //             ),
          //             Padding(
          //               padding: EdgeInsets.only(left: 10),
          //               child: Text(
          //                 'For orders above LKR 5000.00, win a total of 100 loyalty points free! This promotion is available until 31st of November. ',
          //                 style: TextStyle(fontSize: 16, color: Colors.white),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(bottom: 10),
          //               child: ElevatedButton(onPressed: () {},
          //                   child: Text('Add Promo Code'),
          //                   style: ElevatedButton.styleFrom(primary: Color(0xFFF28606),
          //                       shape: RoundedRectangleBorder(
          //                           borderRadius: BorderRadius.circular(12)
          //                       )
          //                   )
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //
          //
          //       SizedBox(height: 20,),
          //
          //       Card(
          //         // shadowColor: Colors.red,
          //         elevation: 8,
          //         color: Color(0xFF315074).withOpacity(0.8),
          //         clipBehavior: Clip.antiAlias,
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(24),
          //         ),
          //         child: Column(
          //           children: [
          //
          //             Padding(
          //               padding: EdgeInsets.all(10),
          //               child: Text(
          //                 'Cash Bonanza',
          //
          //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          //               ),
          //             ),
          //             Padding(
          //               padding: EdgeInsets.only(left: 10),
          //               child: Text(
          //                 'Enjoy a cashback of 30% on all the orders above LKR 5000.00. This is valid until 5th October. Hurry up!',
          //                 style: TextStyle(fontSize: 16, color: Colors.white),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(bottom: 10),
          //               child: ElevatedButton(onPressed: () {},
          //                   child: Text('Add Promo Code'),
          //                   style: ElevatedButton.styleFrom(primary: Color(0xFFF28606),
          //                       shape: RoundedRectangleBorder(
          //                           borderRadius: BorderRadius.circular(12)
          //                       )
          //                   )
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //
          //
          //     ],
          //   ),
          // ),






        ],
      ),

    );
  }
}