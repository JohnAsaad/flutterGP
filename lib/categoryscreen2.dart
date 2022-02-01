import 'package:flutter/material.dart';

class CategoryScreen2 extends StatefulWidget {
  const CategoryScreen2({Key? key}) : super(key: key);

  @override
  _CategoryScreen2State createState() => _CategoryScreen2State();
}

class _CategoryScreen2State extends State<CategoryScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromRGBO(127, 71, 221, 1),
        centerTitle: true,
        title: Text('Category 2',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
      ),
    );
  }
}
