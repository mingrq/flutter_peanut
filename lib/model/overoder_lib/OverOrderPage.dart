import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverOrderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OverOrderPage();
}

class _OverOrderPage extends State<OverOrderPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    _tabController = TabController(vsync: this, length: 3);
    return Scaffold(
      appBar: AppBar(
        title: Text("已完结"),
        centerTitle: true,
        bottom: TabBar(
          tabs: <Widget>[
            Tab(text: "派送中"),
            Tab(text: "已签收"),
            Tab(text: "已退款"),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child: Text("这是热门的内容")),
          Center(child: Text("这是推荐的内容")),
          Center(child: Text("这是关注的内容")),
        ],
      ),
    );
  }

}
