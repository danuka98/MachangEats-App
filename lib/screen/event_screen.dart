import 'package:flutter/material.dart';
import '../event.dart';


void main() => runApp(MaterialApp(
    home: EventScreen()
));


class EventScreen extends StatelessWidget {

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
    return Scaffold(
      // backgroundColor: Color(0xFF363A42),
      appBar: AppBar(
        title: Text('Events'),
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
                  height: 100,
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
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                  ),

                ),
              ),
            ],
          ),






          ListView.builder(
            itemCount: events.length,
              itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  children: [
                    Card(

                      // shadowColor: Colors.red,
                      elevation: 8,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        children: [

                          Ink.image(
                            image: NetworkImage(
                             events[index].url,
                            ),
                            height: 200,
                            // width: 300,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              events[index].title,
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              events[index].description,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,)

                  ],
                ),
              );
              }
          )










        ],
      ),

    );
  }
}