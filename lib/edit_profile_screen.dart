
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gp/utils/user_prefrences.dart';
import 'package:flutter_gp/widget/appbar_widget.dart';
import 'package:flutter_gp/widget/profile_widget.dart';
import 'package:flutter_gp/widget/textfield_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'model/user.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  User user = UserPrefrences.myUser;
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
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          //TO CHANGE THE PHOTO BUT CAN CHANGE IT ONCE
          image != null
              ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 82.0),
                child: ClipOval(
                  child: Image.file(
            image!,
            width: 128,
            height: 128,
            fit: BoxFit.fill,
             ),
                ),
              )
            : ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () => pickImage(ImageSource.gallery),
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Full Name',
            text: user.name,
            onChanged: (name) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Email',
            text: user.email,
            onChanged: (email) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Bio',
            text: user.about,
            maxLines: 5,
            onChanged: (about) {},
          ),
          const SizedBox(height: 48),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color.fromRGBO(122, 71, 221, 1),
                ),
                child: TextButton(
                    onPressed: ()=> print('Saved'),
                    child: Text('SAVE',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                ),

          )
          ),



        ],
      ),
    );
  }
}
