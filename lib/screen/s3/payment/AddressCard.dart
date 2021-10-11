import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  final String title;
  AddressCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(title),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
