import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/colors_login.dart';

class RoundButtonLog extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  const RoundButtonLog(
      {Key key, @required this.label, this.onPressed, this.backgroundColor})
      : assert(label != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        child: Text(
          this.label,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'sans',
              letterSpacing: 1,
              fontSize: 18),
        ),
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
        decoration: BoxDecoration(
          color: this.backgroundColor ?? ColorLogin.primary,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
