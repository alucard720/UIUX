import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/responsive.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return AspectRatio(
      aspectRatio: 16 / 11,
      child: LayoutBuilder(
        builder: (_, constrains) {
          return Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: constrains.maxHeight * 0.7,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 3,
                        width: constrains.maxWidth,
                        color: Color(0xffeeeeee),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "SUPPER",
                        style: TextStyle(
                            fontSize: responsive.ip(3),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'sans'),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      'assets/pages/login/clouds.svg',
                      width: constrains.maxWidth * 0.30,
                      height: constrains.maxHeight * .7,
                    )),
                Stack(children: <Widget>[
                  Positioned(
                      top: constrains.maxHeight * 0.16,
                      left: 0,
                      right: 0,
                      bottom: constrains.maxHeight * 0.30,
                      child: SvgPicture.asset(
                        'assets/pages/login/cart.svg',
                        width: constrains.maxWidth * .35,
                      )),
                ]),
              ],
            ),
          );
        },
      ),
    );
  }
}
