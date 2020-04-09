import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpeanut/values/color/colors.dart';

/**
 * 退款页面
 */
class RefundPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RefundPage();
}

class _RefundPage extends State<RefundPage> with AutomaticKeepAliveClientMixin{

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Center(child: Text("退款页面"),);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
