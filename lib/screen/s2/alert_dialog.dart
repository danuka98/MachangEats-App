import 'package:flutter/material.dart';
import 'package:uee/styles/constants.dart';

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    //String title,
    String body,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: kDark,
          //title: Text(title),
          content: Text(
            body,
            style: TextStyle(
                color: kWhite, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all<Color>(kDark)),
              onPressed: () => Navigator.of(context).pop(DialogsAction.cancel),
              child: Text(
                'No',
                style: TextStyle(
                    color: kWhite, fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all<Color>(kDark)),
              onPressed: () => Navigator.of(context).pop(DialogsAction.yes),
              child: Text(
                'Yes',
                style: TextStyle(
                    color: kWhite, fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : DialogsAction.cancel;
  }
}
