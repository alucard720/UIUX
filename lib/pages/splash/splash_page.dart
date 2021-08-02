import 'package:after_layout/after_layout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:precio_app/pages/home/home_page.dart';

import '../../libs/auth.dart';
import '../login/login_pages.dart';

class SplashPage extends StatefulWidget {
  static final routeName = 'splash';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AfterLayoutMixin {
  @override
  void afterFirstLayout(BuildContext context) {
    Auth.instance.user.then((User user) {
      if (user != null) {
        Navigator.pushNamed(context, HomePage.routeName);
      } else {
        Navigator.pushNamed(context, LoginPage.routeName);
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
