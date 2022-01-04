import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gp/navbar.dart';
import 'addpost_screen.dart';
import 'menu_screen.dart';


class HomeScreen extends StatefulWidget
{

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get text => null;

  int currentIndex = 0;


  @override
  Widget build(BuildContext context)
  {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(127, 71, 221, 1),
          title: Center(
            child: Text(
              'EASY REACH',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions:
          [
            //search icon
            Container(

                    margin:  EdgeInsetsDirectional.only(
                    top: 10.0,
                    bottom: 10.0,
                    start: 10.0,
                    ),
                    decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,

                    ),
                    child: IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 25.0,
                      color: Color.fromRGBO(127, 71, 221, 1),
                      onPressed: () {},
                      ),
                    ),
            //profile icon
            /*Container(
                      margin:  EdgeInsetsDirectional.only(
                      top: 6.0,
                      bottom: 6.0,
                      end: 6.0,
                    ),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,

                      ),
                        child: IconButton(
                        icon: Icon(Icons.account_circle_outlined),
                      iconSize: 30.0,
                      color: Color.fromRGBO(127, 71, 221, 1),
                      onPressed: () {},
          ),
          ),*/
          ],

          bottom: TabBar(
            indicatorColor: Colors.white,

            tabs: [
            Tab(icon: Icon(Icons.check), text: 'Found',),
            Tab(icon: Icon(Icons.error_outline), text: 'Lost',),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),),
          child: Icon(Icons.add,size: 35.0,),
            backgroundColor: Color.fromRGBO(127, 71, 221, 1),

            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>AddpostScreen())
              );
            },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


        body:
              TabBarView(

                children: [
                  buildPage('Found Page'),
                  buildPage('Lost Page'),
                ],

        ),

      ),
    );




  }

  buildPage(String text) => Center(
    child: Expanded(
      child: Container(
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Color.fromRGBO(242, 242, 242, 1),
        ),
        width: double.infinity,
        child: Stack(
          children:
          [
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text(
                text,
                style: TextStyle(fontSize: 28.0),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 28.0),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 28.0),
              ),

            ],
          ),
            Row(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.all(8.0),
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                   radius: 25.0,
                   backgroundColor: Color.fromRGBO(179, 179, 179, 1),

                  ),
                ),
                SizedBox(width: 10.0,),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 18.0),
                  child: Column(
                    children: [
                      Text(

                        'Name'
                      ),
                      Text(
                          '2:00 pm'
                      ),

                    ],
                  ),
                ),
              ],

            ),

          ],
        ),
      ),
    ),

  );
}


/*Widget buildNavigateButton() => FloatingActionButton(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  child: Icon(Icons.add,size: 35.0,),
  backgroundColor: Color.fromRGBO(127, 71, 221, 1),

  onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>AddpostScreen())
    );
  },
);*/