import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpeanut/values/color/colors.dart';

/**
 * 签收页面
 */
class SignaturePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignaturePage();
}

class _SignaturePage extends State<SignaturePage> with AutomaticKeepAliveClientMixin{

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(child: Text("签收页面"),);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
