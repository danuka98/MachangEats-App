import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uee/screen/categoryUI.dart';
import 'package:uee/screen/s1/event.dart';
import 'package:uee/styles/constants.dart';

class EventScreen extends StatefulWidget {

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  late double widthScale, heightScale, height;

  List<Event> events= [
    Event(
      url: 'https://cdn.shopify.com/s/files/1/0030/0033/6497/collections/collection_banners_WednesdayDeal_1024x1024.jpg?v=1585658945',
      title: 'It’s Back!!!',
      description: 'Stand a chance to win 2000 loyalty points for every order above LKR 2000.00 ordered on wednesday. Hurry up foodies!'
    ),
    Event(
        url: 'https://img.freepik.com/free-vector/coming-soon-message-illuminated-with-light-projector_1284-3622.jpg?size=338&ext=jpg',
        title: 'Black Tie Event!',
        description: 'Stay tuned and log in to the app frequently to know more details'
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
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
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
                          'Events',
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
              height: heightScale * 290,
              child: Padding(
                padding: EdgeInsets.only(
                  left: widthScale * 15,
                  right: widthScale * 15,
                  top: heightScale * 15
                ),
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 0,
                      );
                    },
                  itemCount: events.length,
                    itemBuilder: (context, index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 8,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                    events[index].url,
                                  ),
                                  height: heightScale * 80,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: heightScale * 5,
                                    right: widthScale * 10
                                  ),
                                  child: Text(
                                    events[index].title,
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    events[index].description,
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,)
                        ],
                      );
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

