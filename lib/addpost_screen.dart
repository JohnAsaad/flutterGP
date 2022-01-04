import 'package:flutter/material.dart';
import 'package:flutter_gp/navbar.dart';
class AddpostScreen extends StatefulWidget {

  @override
  State<AddpostScreen> createState() => _AddpostScreenState();
}

class _AddpostScreenState extends State<AddpostScreen> {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text(
        'Add Post',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}