import 'package:flutter/material.dart';
import 'package:flutter_gp/navbar.dart';
class AddpostScreen extends StatefulWidget {

  @override
  State<AddpostScreen> createState() => _AddpostScreenState();
}

class _AddpostScreenState extends State<AddpostScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(127, 71, 221, 1),
        title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Center(
          child: Text(
          'EASY REACH',
          style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          ),
          ),
      ),
        ),
      ),
    );
  }
}