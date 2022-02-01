import 'package:flutter/material.dart';
import 'package:flutter_gp/categoryscreen1.dart';
import 'package:flutter_gp/categoryscreen3.dart';
import 'package:flutter_gp/savedposts_screen.dart';
import 'package:flutter_gp/settings_screen.dart';

import 'categoryscreen2.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child:  Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children:
          [
            UserAccountsDrawerHeader(
                accountName: Text('John Asaad'),
                accountEmail: Text('johnnagy91@yahoo.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      'https://scontent.fcai20-4.fna.fbcdn.net/v/t39.30808-6/248217650_4885098084856644_6581227162940891820_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=tIoiWvVxAukAX8-0osj&_nc_ht=scontent.fcai20-4.fna&oh=00_AT-hb__kIAsAdxkgKb1oip7g5hduNgkmUsxJlHTBEZermw&oe=61D86C9F',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              decoration: BoxDecoration(
                image:  DecorationImage(
                  image: NetworkImage(
                    'https://www.pixel4k.com/wp-content/uploads/2018/10/blue-dark-yellow-abstract-artistic-4k_1539371150.jpg',
                  ),
                  fit: BoxFit.cover,
                )
              ),
            ),

            //PROFILE
            ListTile(
              iconColor: Color.fromRGBO(127, 71, 221, 1),
              leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.account_circle)),
              title: Text('Profile',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
              onTap: () => print('Profile'),
            ),
            SizedBox(height: 20,),

            //CATEGORIES
            ExpansionTile(
              leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.category)),
              title: Text ('Categories' ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
              children: [

                ListTile(
                  iconColor: Color.fromRGBO(127, 71, 221, 1),
                  leading: CircleAvatar(
                      backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                      foregroundColor: Colors.white,
                      child: Icon(Icons.circle)),
                  title: Text('Category 1',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>CategoryScreen1())
                    );
                  },
                ),
                ListTile(
                  iconColor: Color.fromRGBO(127, 71, 221, 1),
                  leading: CircleAvatar(
                      backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                      foregroundColor: Colors.white,
                      child: Icon(Icons.circle)),
                  title: Text('Category 2',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>CategoryScreen2())
                    );
                  },
                ),
                ListTile(
                  iconColor: Color.fromRGBO(127, 71, 221, 1),
                  leading: CircleAvatar(
                      backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                      foregroundColor: Colors.white,
                      child: Icon(Icons.circle)),
                  title: Text('Category 3',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,)),
                  onTap: () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>CategoryScreen3())
                  );
                  },
                ),

              ],
            ),
            SizedBox(height: 20,),

            //SAVED POSTS
            ListTile(
              iconColor: Color.fromRGBO(127, 71, 221, 1),
              leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.archive)),
              title: Text('Saved Posts',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SavedPostsScreen())
                );
              },
            ),
            Divider(),

            //SETTINGS
            ListTile(
              iconColor: Color.fromRGBO(127, 71, 221, 1),
              leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.settings)),
              title: Text('Settings',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SettingScreen())
                );
              },
            ),
            Divider(),

            //LOGOUT
            ListTile(
              iconColor: Color.fromRGBO(127, 71, 221, 1),
              leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.exit_to_app)),
              title: Text('Log Out',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
              onTap: () => print('LogOut'),
            ),



          ],
        ),
      ),
    );
  }
}
