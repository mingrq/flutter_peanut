import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewOrderPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_NewOrderPage();
}

class _NewOrderPage extends State<NewOrderPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("新订单"),
        centerTitle: true
      ),
      body:Text("新订单")

    );
  }
}