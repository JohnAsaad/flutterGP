import 'package:flutter/material.dart';

class CategoryScreen1 extends StatefulWidget {
  const CategoryScreen1({Key? key}) : super(key: key);

  @override
  _CategoryScreen1State createState() => _CategoryScreen1State();
}

class _CategoryScreen1State extends State<CategoryScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromRGBO(127, 71, 221, 1),
        centerTitle: true,
        title: Text('Category 1',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
      ),
    );
  }
}
