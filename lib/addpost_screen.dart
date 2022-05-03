
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

        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                SizedBox(height:25.0),
                Text('ADD POST',
                style: TextStyle(
                    color: Color.fromRGBO(127, 71, 221, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,

                ),),
                SizedBox(height:25.0),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Item Description',
                    style: TextStyle(
                      color: Color.fromRGBO(127, 71, 221, 0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,


                    ),),
                ),
                SizedBox(height:5.0),
                TextField(
                  //textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Enter Text',
                      //labelText: 'Add a post',
                      //labelStyle: TextStyle( color: Color.fromRGBO(127, 71, 221, 1)) ,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(127, 71, 221, 1),width: 2.0)
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                  ),
                  maxLines: 10,
                  minLines: 1,

                ),
                SizedBox(height: 5,),
                const Divider(height: 10.0,thickness: 0.5),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        
                        color: Color.fromRGBO(122, 71, 221, 1),
                          child: IconButton(onPressed: () => print('ADD'),
                              icon: Icon(Icons.camera_alt_outlined,color: Colors.white,)

                          )),
                    )

                  ],
                ),
                SizedBox(height: 35,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('What is the item?',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,


                    ),),
                ),

                //RADIO BUTTONS
                Row(
                  children: [

                  ],
                )


              ],
            ),
          ),
        ),

    );
  }
}