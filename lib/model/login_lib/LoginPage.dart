import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterpeanut/values/color/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool is_remember_pw = true; //是否记住密码

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: new EdgeInsets.fromLTRB(40, 80, 40, 0),
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login_bg.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: new Border.all(
                  color: PeanutColors.peanut_yellow_1,
                  width: 1,
                ),
                borderRadius: new BorderRadius.circular((50.0)),
              ),
              padding: EdgeInsets.all(6),
              child: SvgPicture.asset("assets/svgs/logo1.svg"),
            ),
            Container(
              height: 50,
              margin: new EdgeInsets.only(top: 50),
              child: TextField(
                autofocus: false,
                cursorColor: Colors.green,
                cursorWidth: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    /*边角*/
                    borderRadius: BorderRadius.all(
                      Radius.circular(30), //边角为30
                    ),
                    borderSide: BorderSide(
                      color: PeanutColors.peanut_yellow_1, //边线颜色为黄色
                      width: 1, //边线宽度为2
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30), //边角为30
                      ),
                      borderSide: BorderSide(
                        color: Colors.green, //边框颜色为绿色
                        width: 1, //宽度为5
                      )),
                  // errorText: "errorText",
                  hintText: "请输入用户名",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  prefixIcon: Padding(
                    padding: new EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      "assets/svgs/user.svg",
                      color: PeanutColors.peanut_yellow_1,
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              margin: new EdgeInsets.only(top: 20),
              child: TextField(
                autofocus: false,
                obscureText: true,
                cursorColor: Colors.green,
                cursorWidth: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    /*边角*/
                    borderRadius: BorderRadius.all(
                      Radius.circular(30), //边角为30
                    ),
                    borderSide: BorderSide(
                      color: PeanutColors.peanut_yellow_1, //边线颜色为黄色
                      width: 1, //边线宽度为2
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30), //边角为30
                      ),
                      borderSide: BorderSide(
                        color: Colors.green, //边框颜色为绿色
                        width: 1, //宽度为5
                      )),
                  // errorText: "errorText",
                  hintText: "请输入密码",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  prefixIcon: Padding(
                    padding: new EdgeInsets.all(14),
                    child: SvgPicture.asset(
                      "assets/svgs/pw.svg",
                      color: PeanutColors.peanut_yellow_1,
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.is_remember_pw,
                  activeColor: PeanutColors.peanut_yellow_1,
                  onChanged: (bool val) {
                    // val 是布尔值
                    this.setState(() {
                      this.is_remember_pw = !this.is_remember_pw;
                    });
                  },
                ),
                Text(
                  "记住密码",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Container(
              height: 50,
              alignment: Alignment(0, 0),
              margin: new EdgeInsets.only(top: 80),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: PeanutColors.peanut_yellow_1,
                  borderRadius: BorderRadius.circular((30.0))),
              child: Text(
                '登 录',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
