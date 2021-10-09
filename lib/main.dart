import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screen/categoryUI.dart';
import 'screen/event_screen.dart';
import 'screen/loyalty_screen.dart';
import 'screen/order_screen.dart';
import 'screen/promotion_screen.dart';

void main() => runApp(MaterialApp(
  home: OrderScreen(),
  // home: LoyaltyScreen(),
  // home: PromotionScreen(),
  // home: EventScreen(),
));


// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: CategoryList(),
//     );
//   }
// }
