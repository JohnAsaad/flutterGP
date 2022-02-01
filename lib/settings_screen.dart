import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


var emailController = TextEditingController();
var passwordController = TextEditingController();



class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(127,71,211,1),
        title: Text("Settings",style: TextStyle(fontSize: 22)),
      ),
      body: Container(
        padding: const EdgeInsetsDirectional.all(10),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color: Color.fromRGBO(127, 71, 221, 1),
                ),
                SizedBox(width: 10),
                Text("Account",style: TextStyle(fontSize: 20, fontWeight:  FontWeight.bold),)
              ],
            ),
            SizedBox(height: 15),
            Divider(height: 20,thickness: 1,),
            SizedBox(height: 15),
            buildAccountOption(context, "Change Password"),
            SizedBox(height: 8),
            buildAccountOptionName(context, "Change Name"),
            SizedBox(height: 8),
            buildAccountOptionLocation(context, "Location"),
            SizedBox(height: 40),
           /* Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.notifications,color: Color.fromRGBO(127, 71, 221, 1)),
                SizedBox(width: 10),
                Text("Notifications", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)
              ],
            ),
            SizedBox(height: 15),
            Divider(height: 20,thickness: 1),
            SizedBox(height: 15),*/

          ],
        ),
      ),
    );
  }
  

 /* Padding buildNotificationOption(String title,bool value, Function onChangeMethod) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600]
          )),
          Transform.scale(
              scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Color.fromRGBO(127, 71, 221, 1),
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }*/

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.grey[400]) ,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                ),
                TextButton(onPressed: () {},
                    child: Text("OK")),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"))
            ],
          );
        }
        );
        
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios, color: Colors.grey,)
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOptionName(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Name",
                    labelStyle: TextStyle(color: Colors.grey[400]) ,
                    prefixIcon: Icon(
                      Icons.account_circle,
                    ),
                    prefixIconColor: Colors.grey[400],
                  ),
                ),
                TextButton(onPressed: () {},
                    child: Text("OK")),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"))
            ],
          );
        }
        );

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios, color: Colors.grey,)
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOptionLocation(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Location",
                    labelStyle: TextStyle(color: Colors.grey[400]) ,
                    prefixIcon: Icon(
                      Icons.location_on,
                    ),
                    prefixIconColor: Colors.grey[400],
                  ),
                ),
                TextButton(onPressed: () {},
                    child: Text("OK")),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"))
            ],
          );
        }
        );

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios, color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}
