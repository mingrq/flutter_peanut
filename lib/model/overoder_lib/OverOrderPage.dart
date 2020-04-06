import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverOrderPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() =>_OverOrderPage();

}

class _OverOrderPage extends State<OverOrderPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title: Text("已完结"),
            centerTitle: true
        ),
        body:Text("已完结")

    );
  }
}