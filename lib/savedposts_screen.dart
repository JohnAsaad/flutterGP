import 'package:flutter/material.dart';

class SavedPostsScreen extends StatefulWidget {
  const SavedPostsScreen({Key? key}) : super(key: key);

  @override
  _SavedPostsScreenState createState() => _SavedPostsScreenState();
}

class _SavedPostsScreenState extends State<SavedPostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(127, 71, 221, 1),
        centerTitle: true,
        title: Text('Saved Posts',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
      ),

      body: buildPage(),
    );
  }
}


buildPage() => SingleChildScrollView(
  child: Column(
    children: [

      Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(242, 242, 242, 1),
            borderRadius: BorderRadius.circular(25)
        ),
        margin: const EdgeInsets.all(15.0 ),
        padding: const EdgeInsetsDirectional.only(
          top: 16.0,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 15.0 ),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:
                [
                  Row(
                    children:
                    [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
                        radius: 30,
                      ),
                      SizedBox(width: 8.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                            'Name Here',
                            style: TextStyle(fontSize: 16.0,color: Color.fromRGBO(51, 51, 51, 1),fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            '12:00 AM',
                            style: TextStyle(fontSize: 12,color: Color.fromRGBO(65, 65, 65, 1)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0,),
                  Text('sdsdalknlandlasndlkasndlnasldkn asnd laksndalksndkal nalsk ndlkasn laskn lasnd lasnd lasnd klaseiwlgfkgm sklfm dlfjg kdfg ask',
                    style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1)),),
                  const SizedBox(height: 15.0,),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(179, 179, 179, 1),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 300,
              width: double.infinity,

            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(127, 71, 221, 1),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 45,
              width: double.infinity,
              child: Expanded(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    IconButton(
                      icon: Icon(Icons.thumb_up_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      icon: Icon(Icons.comment,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      icon: Icon(Icons.call,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                  ],
                ),
              ),

            ),

          ],
        ),



      ),
      Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(242, 242, 242, 1),
            borderRadius: BorderRadius.circular(25)
        ),
        margin: const EdgeInsets.all(15.0 ),
        padding: const EdgeInsetsDirectional.only(
          top: 16.0,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 15.0 ),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:
                [
                  Row(
                    children:
                    [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
                        radius: 30,
                      ),
                      SizedBox(width: 8.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                            'Name Here',
                            style: TextStyle(fontSize: 16.0,color: Color.fromRGBO(51, 51, 51, 1),fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            '12:00 AM',
                            style: TextStyle(fontSize: 12,color: Color.fromRGBO(65, 65, 65, 1)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0,),
                  Text('sdsdalknlandlasndlkasndlnasldkn asnd laksndalksndkal nalsk ndlkasn laskn lasnd lasnd lasnd klaseiwlgfkgm sklfm dlfjg kdfg ask',
                    style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1)),),
                  const SizedBox(height: 15.0,),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(179, 179, 179, 1),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 300,
              width: double.infinity,

            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(127, 71, 221, 1),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 45,
              width: double.infinity,
              child: Expanded(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    IconButton(
                      icon: Icon(Icons.thumb_up_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      icon: Icon(Icons.comment,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      icon: Icon(Icons.call,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                  ],
                ),
              ),

            ),

          ],
        ),



      ),
      Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(242, 242, 242, 1),
            borderRadius: BorderRadius.circular(25)
        ),
        margin: const EdgeInsets.all(15.0 ),
        padding: const EdgeInsetsDirectional.only(
          top: 16.0,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 15.0 ),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:
                [
                  Row(
                    children:
                    [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
                        radius: 30,
                      ),
                      SizedBox(width: 8.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                            'Name Here',
                            style: TextStyle(fontSize: 16.0,color: Color.fromRGBO(51, 51, 51, 1),fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            '12:00 AM',
                            style: TextStyle(fontSize: 12,color: Color.fromRGBO(65, 65, 65, 1)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0,),
                  Text('sdsdalknlandlasndlkasndlnasldkn asnd laksndalksndkal nalsk ndlkasn laskn lasnd lasnd lasnd klaseiwlgfkgm sklfm dlfjg kdfg ask',
                    style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1)),),
                  const SizedBox(height: 15.0,),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(179, 179, 179, 1),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 300,
              width: double.infinity,

            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(127, 71, 221, 1),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 45,
              width: double.infinity,
              child: Expanded(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    IconButton(
                      icon: Icon(Icons.thumb_up_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      icon: Icon(Icons.comment,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      icon: Icon(Icons.call,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                  ],
                ),
              ),

            ),

          ],
        ),



      ),
      Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(242, 242, 242, 1),
            borderRadius: BorderRadius.circular(25)
        ),
        margin: const EdgeInsets.all(15.0 ),
        padding: const EdgeInsetsDirectional.only(
          top: 16.0,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 15.0 ),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:
                [
                  Row(
                    children:
                    [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
                        radius: 30,
                      ),
                      SizedBox(width: 8.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                            'Name Here',
                            style: TextStyle(fontSize: 16.0,color: Color.fromRGBO(51, 51, 51, 1),fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            '12:00 AM',
                            style: TextStyle(fontSize: 12,color: Color.fromRGBO(65, 65, 65, 1)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0,),
                  Text('sdsdalknlandlasndlkasndlnasldkn asnd laksndalksndkal nalsk ndlkasn laskn lasnd lasnd lasnd klaseiwlgfkgm sklfm dlfjg kdfg ask',
                    style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1)),),
                  const SizedBox(height: 15.0,),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(179, 179, 179, 1),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 300,
              width: double.infinity,

            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(127, 71, 221, 1),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 45,
              width: double.infinity,
              child: Expanded(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    IconButton(
                      icon: Icon(Icons.thumb_up_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      icon: Icon(Icons.comment,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      icon: Icon(Icons.call,
                        color: Colors.white,
                      ),
                      onPressed: () {  },
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
);
