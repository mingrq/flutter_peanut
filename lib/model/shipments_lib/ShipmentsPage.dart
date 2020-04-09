import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpeanut/values/color/colors.dart';

/**
 * 配送中页面
 */
class ShipmentsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShipmentsPage();
}

class _ShipmentsPage extends State<ShipmentsPage> with AutomaticKeepAliveClientMixin{
  final List<String> entries = <String>["0","1","2","3","4","5","6","7","8","9"];
  final List<int> colorCodes = <int>[0,100,200,300,400,500,600,700,800,900];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar:AppBar(
            title: Text("我的"),
            centerTitle: true
        ),
        body:ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            })

    );
  }

  @override
  bool get wantKeepAlive => true;
}
