import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_MyPage();
}

class _MyPage extends State<MyPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title: Text("我的"),
            centerTitle: true
        ),
        body:ListView()

    );
  }
}