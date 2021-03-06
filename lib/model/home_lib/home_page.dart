import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterpeanut/model/my_lib/MyPage.dart';
import 'package:flutterpeanut/model/newoder_lib/NewOrderPage.dart';
import 'package:flutterpeanut/model/overoder_lib/OverOrderPage.dart';
import 'package:flutterpeanut/values/color/colors.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current_index = 0; //当前选中项
  List _pages = List(); //页面集合
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    initViewPage();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: PageView.builder(
        itemCount: _pages.length,
        itemBuilder: (context, index) => _pages[index],
        onPageChanged: _pageChange,
        physics: NeverScrollableScrollPhysics(),
        //viewPage禁止左右滑动
        controller: _controller,
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          brightness: Brightness.light,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          iconSize: 20,
          selectedItemColor: PeanutColors.peanut_yellow_1,
          type: BottomNavigationBarType.fixed,
          items: initNav(),
          onTap: _onTap,
          currentIndex: _current_index,
        ),
      ),
    );
  }

  /**
   * 初始化导航
   */
  List initNav() {
    List _bottomNavs = new List<BottomNavigationBarItem>();
    BottomNavigationBarItem new_order = new BottomNavigationBarItem(
      icon: _current_index == 0
          ? Container(
              height: 30,
              width: 30,
              child: SvgPicture.asset("assets/svgs/new_p.svg"),
            )
          : Container(
              height: 30,
              width: 30,
              child: SvgPicture.asset("assets/svgs/new.svg"),
            ),
      title: Text("新订单"),
    );
    BottomNavigationBarItem over = new BottomNavigationBarItem(
        icon: _current_index == 1
            ? Container(
                height: 30,
                width: 30,
                child: SvgPicture.asset("assets/svgs/over_p.svg"),
              )
            : Container(
                height: 30,
                width: 30,
                child: SvgPicture.asset("assets/svgs/over.svg"),
              ),
        title: Text("已完结"));
    BottomNavigationBarItem my = new BottomNavigationBarItem(
      icon: _current_index == 2
          ? Container(
              height: 30,
              width: 30,
              child: SvgPicture.asset("assets/svgs/my_p.svg"),
            )
          : Container(
              height: 30,
              width: 30,
              child: SvgPicture.asset("assets/svgs/my.svg"),
            ),
      title: Text("我的"),
    );
    _bottomNavs.add(new_order);
    _bottomNavs.add(over);
    _bottomNavs.add(my);
    return _bottomNavs;
  }

  /**
   * 初始化viewpager
   */
  void initViewPage() {
    if (_pages == null) {
      _pages = new List();
    }
    _pages.add(NewOrderPage());
    _pages.add(OverOrderPage());
    _pages.add(MyPage());
  }

  void _onTap(int index) {
    setState(() {
      _current_index = index;
    });
    _controller.jumpToPage(index);
  }

  /**
   * 页面切换控制器
   */
  void _pageChange(int index) {
    setState(() {
      _current_index = index;
    });
  }
}
