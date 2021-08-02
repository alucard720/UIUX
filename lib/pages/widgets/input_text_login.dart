import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputTextForm extends StatelessWidget {
  final String iconpath, placeholder;
  const InputTextForm({Key key, @required this.iconpath, this.placeholder})
      : assert(iconpath != null && placeholder != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      prefix: Container(
        width: 40,
        height: 30,
        child: SvgPicture.asset(
          this.iconpath,
          color: Color(0xffcccccc),
        ),
      ),
      placeholder: this.placeholder,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.black26,
          ),
        ),
      ),
    );
  }
}
