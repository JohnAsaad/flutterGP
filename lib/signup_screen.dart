import 'package:flutter/material.dart';
import 'package:flutter_gp/home_screen.dart';
import 'package:flutter_gp/login_screen.dart';

class SignupScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                //container for all screen with background image
                Container(
                  height: 800,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/BG.png'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Stack(
                    //stack for login text and two text fields and a button
                    children: [
                      Positioned(
                        child: Container(
                          //For Login Text
                          margin: EdgeInsetsDirectional.only(bottom: 300),
                          child: Center(
                              child: Text(
                                "Sign\nUp",
                                style: TextStyle(color:Colors.white, fontSize: 95,fontWeight: FontWeight.bold,),
                              )
                          ),
                        ),
                      ),
                      Container(
                        //contains text fields
                        padding: EdgeInsetsDirectional.only(top:360),
                        child: Padding(
                          padding:  EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(77 , 77, 77, .4),
                                          blurRadius: 20.0,
                                          offset: Offset(0 , 10)
                                      ),
                                    ]
                                ),
                                child: Column(
                                  children: [

                                    Container(
                                      padding: EdgeInsets.all(7.0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.white30))
                                      ),
                                      child: TextField(
                                        controller: emailController,
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          labelText: "Email",
                                          labelStyle: TextStyle(color: Colors.grey[400]) ,
                                          prefixIcon: Icon(
                                            Icons.email_outlined,
                                          ),
                                          prefixIconColor: Colors.grey[400],
                                        ),
                                      ),

                                    ),
                                    Container(
                                      padding: EdgeInsets.all(7.0),

                                      child: TextField(

                                        keyboardType: TextInputType.number,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          labelText: "Phone Number",
                                          labelStyle: TextStyle(color: Colors.grey[400]) ,
                                          prefixIcon: Icon(
                                            Icons.phone_android_outlined,
                                          ),
                                        ),
                                      ),

                                    ),
                                    Container(
                                      padding: EdgeInsets.all(7.0),

                                      child: TextField(
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

                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 30,),
                              Container(

                                //for login button

                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(51 , 51, 51, 1),
                                          Color.fromRGBO(60 , 60, 60, 1),

                                        ]
                                    )
                                ),
                                child: Center(
                                  child: MaterialButton(
                                    onPressed: ()
                                    {
                                      print(emailController.text);
                                      print(passwordController.text);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=>HomeScreen())
                                      );
                                    },
                                    child: Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}