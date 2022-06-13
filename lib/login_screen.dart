import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gp/home_screen.dart';
import 'package:flutter_gp/signup_screen.dart';

import 'package:http/http.dart'as http;
import 'dart:convert';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {


  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {

  bool _visible = false;
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();


  /*savePref(String name, String email , String id ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("id", id);
    preferences.setString("name", name);
    preferences.setString("email", email);

    print(preferences.getString("name"));
    print(preferences.getString("email"));
    print(preferences.getString("id"));
  }*/



  Future userLogin() async {
    //statusCode:200;

    String url = "http://192.168.1.15:8888/ERapi/login.php";
    setState(() {
      _visible = true;
    });

    var data = {
      "email": email.text,
      "password": password.text
    };
    print(data);

    var response = await http.post(Uri.parse(url),
      body: json.encode(data),
      headers: {
        "Accept": "application/json",
        "Access-Control_Allow_Origin": "*"
      },);

    if (response.statusCode == 200) {
      //Server response into variable
      print(response.body);
      var msg = jsonDecode(response.body);

      //ScaffoldMessenger.of(context).showSnackBar( content:Text("Token :${msg['token']}"));
      //SharedPreferences pref =await SharedPreferences.getInstance();

      if (msg['loginStatus'] == true) {
        setState(() {
          //hide progress indicator
          _visible = false;
        });

        // Navigate to Home Screen
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        //savePref(msg['name'],msg['email'],msg['id']);
      } else {
        setState(() {
          //hide progress indicator
          _visible = false;

          //Show Error Message Dialog
          showMessage(msg["message"]);
        });
      }
    } else {
      setState(() {
        //hide progress indicator
        _visible = false;

        //Show Error Message Dialog
        showMessage("Error during connecting to Server.");
      });
    }
  }

  Future<dynamic> showMessage(String _msg) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(_msg),
          actions: <Widget>[
            TextButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Expanded(
              child: Container(
                height: 800,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/BG.png'),
                      fit: BoxFit.cover
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: _visible,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: LinearProgressIndicator(),
                      ),
                    ),
                    SizedBox(height: 110,),
                    /*Icon(
                      Icons.group,
                      color: Theme.of(context).primaryColor,
                      size: 80.0,
                    ),*/
                    Text(
                      'LOG\nIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 75.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 90.0,
                    ),
                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Column(
                          children: [
                            Theme(
                              data: new ThemeData(
                                primaryColor: Colors.white,
                                primaryColorDark: Colors.white,
                                hintColor:
                                Colors.white, //placeholder color
                              ),
                              child: TextFormField(
                                controller: email,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  enabledBorder: new OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  errorBorder: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  labelText: 'E-Mail',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  hintText: 'Enter Email',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Enter Email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Theme(
                              data: new ThemeData(
                                primaryColor: Colors.white,
                                primaryColorDark: Colors.white,
                                hintColor:
                                Colors.white, //placeholder color
                              ),
                              child: TextFormField(
                                controller: password,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  enabledBorder: new OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  errorBorder: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  labelText: 'Password',
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                  hintText: 'Enter Password',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Enter Password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Column(
                              children: [
                                Row(

                                  //for register text
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Don\'t have an account?', style: TextStyle(color: Colors.white,),),
                                    TextButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>SignupScreen())
                                        );
                                      },
                                      child: Text('Register'),
                                    )
                                  ],
                                ),
                                Text('OR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                TextButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=>SignupScreen())
                                    );
                                  },
                                  child: Text('Forgor Password'),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  primary: Color.fromRGBO(51, 51, 51, 1)
                                  ,
                                ),
                                onPressed: () => {
                                  // Validate returns true if the form is valid, or false otherwise.
                                  if (_formKey.currentState!.validate()) {userLogin()}
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 62,vertical: 16),
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}