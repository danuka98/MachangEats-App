import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/categoryUI.dart';
import 'package:uee/screen/s1/promotion.dart';
import 'package:uee/styles/constants.dart';

class PromotionScreen extends StatefulWidget {

  @override
  State<PromotionScreen> createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
  late double widthScale, heightScale, height;

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
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/images/back2.png',),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
            )
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
                color: kDarkGrey,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 25,
                      top: MediaQuery.of(context).size.height / 50,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CategoryList()),
                              );
                            },
                            icon: Icon(Icons.arrow_back_ios,color: kWhite,)
                        ),
                        Text(
                          'Promotions',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kWhite,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.25,
                      top:  MediaQuery.of(context).size.height / 20,
                    ),
                    child: Image.asset(
                      'asset/images/logo.png',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: heightScale * 0,
              ),
              height: heightScale * 298,
              child: ListView.builder(
                  itemCount: promotions.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.only(
                        left: widthScale * 10,
                        right: widthScale * 10,
                        top: heightScale * 5,
                      ),
                      child: Card(
                        // shadowColor: Colors.red,
                        elevation: 8,
                        color: kDarkBlue,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: widthScale * 15,
                            right: widthScale * 15,
                            top: heightScale * 15,
                            bottom: heightScale * 5
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                promotions[index].title,
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: heightScale * 5
                                ),
                                child: Text(
                                  promotions[index].description,
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600, color: Colors.white),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: heightScale * 10,
                                  left: widthScale * 40,
                                ),
                                child: ElevatedButton(onPressed: () {},
                                    child: Text('Add Promo Code', style: TextStyle(fontSize: 14),),
                                    style: ElevatedButton.styleFrom(primary: Color(0xFFF28606),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                    ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),

    );
  }
}