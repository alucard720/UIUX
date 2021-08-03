import 'package:flutter/material.dart';
import 'package:precio_app/pages/login/login_pages.dart';
import 'package:precio_app/pages/widgets/PopularFoodWidget.dart';
import 'package:precio_app/pages/widgets/SearchWidget.dart';
import 'package:precio_app/pages/widgets/TopMenus.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "Buenas Miguel Santana",
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xFF3a3737),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenu(),
            PopularFood(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
