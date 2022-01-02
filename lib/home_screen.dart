import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Easy Reach',
        ),
        actions:
        // ignore: prefer_const_literals_to_create_immutables
        [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: onProfileaction,
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle,
            ),
            onPressed: ()
            {
              print('HELLO');
            },

          ),
        ],
        backgroundColor: Colors.deepPurpleAccent ,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text(
              'First',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Second',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Third',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Fourth',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'First',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Second',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Third',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Fourth',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'First',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Second',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Third',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Fourth',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'First',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Second',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Third',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Fourth',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'First',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Second',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Third',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Fourth',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'First',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Second',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Third',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Fourth',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }


  void onProfileaction()
  {
    print('CLICKED');
  }
}