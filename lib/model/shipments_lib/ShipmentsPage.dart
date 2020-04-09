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

  @override
  Widget build(BuildContext context) {
    super.build(context);
    log("测试");
    return Center(child: Text("配送中页面"),);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
