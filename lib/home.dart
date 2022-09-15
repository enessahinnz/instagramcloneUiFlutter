
import 'package:flutter/material.dart';
import 'package:instagramcloneflutter/instaBody.dart';

class InstaHome extends StatelessWidget{
  final topBar = AppBar(
    backgroundColor: Color(0xffffffff),
    leading: Icon(
      Icons.camera_alt,
    ),
    centerTitle: true,
    title: SizedBox(
      height: 35.0,
      child: Image.asset("images/insta_logo.png"),

    ),
    actions: [
      Icon(Icons.add_box_outlined,color: Colors.black,),
      Icon(Icons.favorite_border,color: Colors.black,),
      Padding(padding: EdgeInsets.only(left: 8.0,right: 8.0),
      child: Icon(Icons.send,color: Colors.black,),
      ),
    ],
  );

  final bottomNav = Container(
    color:  Colors.white,
    height: 50.0,
    alignment: Alignment.center,
    child: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          const IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          const IconButton(
            icon: Icon(Icons.add_box),
            onPressed: null,
          ),
          const IconButton(
            icon: Icon(Icons.shop_outlined),
            onPressed: null,
          ),
          const IconButton(
            icon: Icon(Icons.person),
            onPressed: null,
          ),
        ],
      ),
    ),
  );




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: topBar,
      bottomNavigationBar: bottomNav,
      body: InstaBody(),

    );
  }


}