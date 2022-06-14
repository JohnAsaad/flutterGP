import 'package:flutter/material.dart';
import 'package:flutter_gp/home_screen.dart';
import 'package:flutter_gp/login_screen.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
//import 'package:fluttertoast/fluttertoast.dart';


class SignupScreen extends StatefulWidget {


  @override
  _SingupState createState() => _SingupState();
}

class _SingupState extends State<SignupScreen> {


  bool visible = false ;
  var msg;

  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();

  /*savepref(String name ,String email,String id) async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setString("name", name);
    preferences.setString("email", email);
    preferences.setString("id", id);

    print(preferences.getString("name"));
    print(preferences.getString("email"));
    print(preferences.getString("id"));
  }*/
  Future userSignup() async{

    // Showing CircularProgressIndicator.
    String url = "http://192.168.0.100:8888/ERapi/register.php";

    setState(() {
      visible = true;
    });

    var data ={
      "name":name.text,
      "email":email.text,
      "phone":phone.text,
      "password":password.text,

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

      msg = jsonDecode(response.body);

      if (msg['SignupStatus'] == true) {

        setState(() {
          //hide progress indicator
          visible = false;
        });

        // Navigate to Home Screen
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        setState(() {
          //hide progress indicator
          visible = false;

          //Show Error Message Dialog
          showMessage(msg["message"]);
        });
      }
    } else {
      setState(() {
        //hide progress indicator
        visible = false;

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
                //savepref(msg['name'], msg['email'],msg['id']);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  final _formsignupKey = GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(

          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/BG.png'),
                fit: BoxFit.cover
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,

            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Visibility(
                    visible: visible,
                    child: Container(

                      margin: EdgeInsets.only(bottom: 10.0),
                      child: LinearProgressIndicator(),
                    ),
                  ),
                  SizedBox(height: 90,),
                /*  Icon(
                    Icons.group,
                    color: Theme.of(context).primaryColor,
                    size: 80.0,
                  ),*/
                  SizedBox(
                    height: 0.0,
                  ),
                  Text(
                    'SIGN\nUP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 75.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  Form(
                    key: _formsignupKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        children: [
                          //USER NAME
                          Theme(
                            data: new ThemeData(
                              primaryColor: Colors.white,
                              primaryColorDark: Colors.white,
                              hintColor:
                              Colors.white, //placeholder color
                            ),
                            child: TextFormField(
                              controller: name,
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
                                labelText: 'User name',
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
                                hintText: 'Enter User Name',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter User name';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //EMAIL
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
                                  //borderRadius: BorderRadius.circular(30),
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
                                  Icons.mail,
                                  color: Colors.white,
                                ),
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(84, 87, 90, 0.5),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                hintText: 'Enter E-Mail',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter User email';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //PHONE
                          Theme(
                            data: new ThemeData(
                              primaryColor: Colors.white,
                              primaryColorDark: Colors.white,
                              hintColor:
                              Colors.white, //placeholder color
                            ),
                            child: TextFormField(
                              controller: phone,
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
                                labelText: 'Phone Number',
                                prefixIcon: const Icon(
                                  Icons.phone_android_outlined,
                                  color: Colors.white,
                                ),
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(84, 87, 90, 0.5),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                hintText: 'Enter Phone Number',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Phone Number';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //PASSWORD
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
                          Row(

                            //for register text
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already have an account?', style: TextStyle(color: Colors.white,),),
                              TextButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=>LoginScreen())
                                  );
                                },
                                child: Text('Login'),
                              )
                            ],
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
                                if (_formsignupKey.currentState!.validate()) {userSignup()}
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 62,vertical: 16),
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(fontSize: 22.0),
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
        ));
  }
}