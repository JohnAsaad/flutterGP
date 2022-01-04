import 'package:flutter/material.dart';

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
                      width: 90,
                      height: 90,
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
            ListTile(
              iconColor: Color.fromRGBO(127, 71, 221, 1),
              leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.notifications)),
              title: Text('Notifications',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
              onTap: () => print('Notifications'),
            ),
            SizedBox(height: 20,),
            ListTile(
              iconColor: Color.fromRGBO(127, 71, 221, 1),
              leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.archive)),
              title: Text('Saved Posts',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
              onTap: () => print('Saved'),
            ),
            Divider(),
            ListTile(
              iconColor: Color.fromRGBO(127, 71, 221, 1),
              leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.settings)),
              title: Text('Settings',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
              onTap: () => print('Settings'),
            ),
            SizedBox(height: 20,),
            ListTile(
              iconColor: Color.fromRGBO(127, 71, 221, 1),
              leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.contact_support_rounded)),
              title: Text('Support',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
              onTap: () => print('Support'),
            ),
            SizedBox(height: 20,),
            Divider(),
            ListTile(
              iconColor: Color.fromRGBO(127, 71, 221, 1),
              leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(127, 71, 221, 1),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.exit_to_app)),
              title: Text('Exit',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
              onTap: () => print('Exit'),
            ),


          ],
        ),
      ),
    );
  }
}
