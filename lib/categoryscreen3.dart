import 'package:flutter/material.dart';

class CategoryScreen3 extends StatefulWidget {
  const CategoryScreen3({Key? key}) : super(key: key);

  @override
  _CategoryScreen3State createState() => _CategoryScreen3State();
}

class _CategoryScreen3State extends State<CategoryScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromRGBO(127, 71, 221, 1),
        centerTitle: true,
        title: Text('Category 3',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
      ),
    );
  }
}
