import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpeanut/model/refund_lib/RefundPage.dart';
import 'package:flutterpeanut/model/shipments_lib/ShipmentsPage.dart';
import 'package:flutterpeanut/model/signature_lib/SignaturePage.dart';
import 'package:flutterpeanut/values/color/colors.dart';

class OverOrderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OverOrderPage();
}

class _OverOrderPage extends State<OverOrderPage>
    with SingleTickerProviderStateMixin ,AutomaticKeepAliveClientMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this,initialIndex: 0, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("已完结"),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Material(
            color: Colors.white,
            child: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: TabBar(
                labelPadding:EdgeInsets.all(0),
                labelColor: PeanutColors.peanut_yellow_1,
                unselectedLabelColor: PeanutColors.peanut_gray_1,
                indicatorColor: PeanutColors.peanut_yellow_1,
                tabs: <Widget>[
                  _tabBarItem("派送中",showRightImage:true),
                  _tabBarItem("已签收",showRightImage:true),
                  _tabBarItem("已退款",showRightImage:false)
                ],
                controller: _tabController,
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ShipmentsPage(),
          SignaturePage(),
          RefundPage(),
        ],
      ),
    );
  }

  /**
   * 自定义tabbaritem
   */
  Widget _tabBarItem(String title, {bool showRightImage = true}) {
    return Tab(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(

              child: Center(
                child: Text(title),
              ),
            ),

            ///分割符自定义，可以放任何widget
            showRightImage
                ? Container(
              width: 1,
              margin: EdgeInsets.only(top: 15, bottom: 15),
              color: Colors.grey,
            )
                : Container(
              width: 1,
              margin: EdgeInsets.only(top: 15, bottom: 15),
            )
          ],
        ));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}