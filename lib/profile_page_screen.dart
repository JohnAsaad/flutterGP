import 'package:flutter/material.dart';
import 'package:flutter_gp/edit_profile_screen.dart';
import 'package:flutter_gp/utils/user_prefrences.dart';
import 'package:flutter_gp/widget/appbar_widget.dart';
import 'package:flutter_gp/widget/numbers_widget.dart';
import 'package:flutter_gp/widget/profile_widget.dart';
import 'model/user.dart';




class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    final user = UserPrefrences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),

      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [

          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfileScreen()),
              );
            },
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),


        ],
      ),
    );
  }


  //NAME AND EMAIL
  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      Text(
          user.email,
          style: TextStyle(color: Colors.grey),
      )
    ],
  );

  Widget buildAbout(User user) => Container(
    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bio',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          user.about,
          style: TextStyle(fontSize: 16, height: 1.4),      )
      ],
    ),
  );
}
