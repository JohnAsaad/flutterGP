import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildButton(context, '15', 'Posts'),
        buildDivider(),
        buildButton(context, '219', 'Likes'),
      ],
    ),
  );

  Widget buildDivider() => Container(
    height: 24,
    child: VerticalDivider(
      color: Colors.black54,
    ),
  );


  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(

        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
