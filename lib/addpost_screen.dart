
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gp/navbar.dart';
import 'package:image_picker/image_picker.dart';

class AddpostScreen extends StatefulWidget {

  @override
  State<AddpostScreen> createState() => _AddpostScreenState();
}

class _AddpostScreenState extends State<AddpostScreen> {

  List<bool> isSelected = [false, false];
  List<bool> isSelected2 = [false, false];


  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }

  }


  @override
  Widget build(BuildContext context) {

    int val;

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  //ADD POST TEXT AND DESCRIPTION WITH IMAGE BUTTON
                  Column(
                    children: [
                      SizedBox(height:20.0),
                      //ADD POST TEXT
                      Text('ADD POST',
                      style: TextStyle(
                          color: Color.fromRGBO(127, 71, 221, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,

                      ),),
                      SizedBox(height:25.0),
                      //WHAT IS THE PHOTO TEXT
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Is this an item or a person?',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            fontSize: 14.0,
                          ),),
                      ),
                      SizedBox(height:12.0),
                      //TOGGLE BUTTON FOR ITEM OR PERSON
                      Container(

                        color: Colors.grey[50],
                        child: ToggleButtons(
                          isSelected: isSelected,
                          selectedColor: Colors.white,
                          color: Colors.black54,
                          fillColor: Color.fromRGBO(122, 71, 221, 1),
                          renderBorder: false,
                          splashColor: Color.fromRGBO(122, 71, 221, 0.8),
                          borderRadius: BorderRadius.circular(24),
                          children:
                          [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 64),
                              child: Text('Item' , style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500)) ,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 64),
                              child: Text('Person' , style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500)) ,
                            ),
                          ],

                          onPressed: (int newIndex) {
                            setState(() {
                              for (int index = 0; index < isSelected.length; index++) {
                                if (index == newIndex) {
                                  isSelected[index] = true;
                                } else {
                                  isSelected[index] = false;
                                }

                              }
                            });
                          },

                        ),
                      ),
                      SizedBox(height:25.0),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Is this item/person lost or found?',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            fontSize: 14.0,
                          ),),
                      ),
                      SizedBox(height:12.0),
                      //TOGGLE BUTTON FOR LOST OR FOUND
                      Container(

                        color: Colors.grey[50],
                        child: ToggleButtons(
                          isSelected: isSelected2,
                          selectedColor: Colors.white,
                          color: Colors.black54,
                          fillColor: Color.fromRGBO(122, 71, 221, 1),
                          renderBorder: false,
                          splashColor: Color.fromRGBO(122, 71, 221, 0.8),
                          borderRadius: BorderRadius.circular(24),
                          children:
                          [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 64),
                              child: Text('Lost' , style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500)) ,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 64),
                              child: Text('Found' , style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500)) ,
                            ),
                          ],

                          onPressed: (int newIndex) {
                            setState(() {
                              for (int index = 0; index < isSelected2.length; index++) {
                                if (index == newIndex) {
                                  isSelected2[index] = true;
                                } else {
                                  isSelected2[index] = false;
                                }

                              }
                            });
                          },

                        ),
                      ),
                      SizedBox(height:12.5),
                      const Divider(height: 10.0,thickness: 0.5),
                      SizedBox(height:12.5),
                      //ITEM DESCRIPTION TEXT
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Item Description',
                          style: TextStyle(
                            color: Colors.black54,
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
                            contentPadding: EdgeInsets.symmetric(vertical: 45,horizontal: 10),
                        ),
                        maxLines: 10,
                        minLines: 1,

                      ),
                      SizedBox(height: 5,),
                      const Divider(height: 10.0,thickness: 0.5),
                      SizedBox(height: 5,),

                      //** THIS IS THE PLACEHOLDER FOR UPLOADED IMAGE (mn el ** l7d ** el comment l tani)
                      image != null
                          ? ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.file(
                            image!,
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                        
                              ),
                          )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/Placeholder.png'),
                                    fit: BoxFit.fill,
                            )
                        ),
                        ),
                          ),
                      //**
                      SizedBox(height: 5,),
                      const Divider(height: 10.0,thickness: 0.5),
                      SizedBox(height: 5,),
                      //IMAGE BUTTON
                      Row(
                        children: [
                          //ADD IMAGE FROM GALLERY
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Color.fromRGBO(122, 71, 221, 1),
                              ),
                                child: IconButton(onPressed: () => pickImage(ImageSource.gallery),
                                    icon: Icon(Icons.photo_outlined,color: Colors.white,)

                                )),
                          ),
                          SizedBox(width: 20),
                          //TAKE IMAGE FROM CAMERA
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Color.fromRGBO(122, 71, 221, 1),
                                ),
                                child: IconButton(onPressed: () => pickImage(ImageSource.camera ),
                                    icon: Icon(Icons.camera_alt_outlined,color: Colors.white,)

                                )),
                          )


                        ],
                      ),
                      SizedBox(height: 25,),
                      /*Align(
                        alignment: Alignment.topLeft,
                        child: Text('What is the item?',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,


                          ),),
                      ),*/
                      //RADIO BUTTONS
                      /*Row(
                        children: [

                        ],
                      )*/

                    ],
                  ),
                  SizedBox(height:1.0),
                  //POST BUTTON
                  Column(

                    children:
                    [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 64.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(24),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 10),
                                    ),
                                  ],
                                ),
                                child: TextButton(
                                    onPressed: ()=> print('Posted'),
                                    child: Text('POST',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(122, 71, 221, 1)),)),
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),

                  SizedBox(height:22.0),
                ],
              ),


            ),
          ),
        ),

    );
  }
}