import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFF6F6F8),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  blurRadius: 4,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/food.png'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Chines Noodles",
                              style: TextStyle(
                                fontFamily: 'RobotoCondensed',
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                            ),
                            Text(
                              'Medium Posion',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.035,
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF6F6F8),
                                          border: Border.all(
                                              color: Color(0xFF818A99)),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '1',
                                            style: TextStyle(
                                              fontFamily: 'RobotoCondensed',
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.035,
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF6F6F8),
                                          border: Border.all(
                                              color: Color(0xFF818A99)),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Rs. 50',
                                            style: TextStyle(
                                              fontFamily: 'RobotoCondensed',
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: []),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
