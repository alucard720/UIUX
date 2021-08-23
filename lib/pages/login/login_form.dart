import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:local_auth/local_auth.dart';
import 'package:precio_app/pages/home/home_page.dart';

import '../widgets/circle_button.dart';
import '../widgets/input_text_login.dart';
import '../widgets/round_button.dart';

class LoginForm extends StatelessWidget {
  final VoidCallback onGoToRegister, onGoToForgotPassword;
  static final LocalAuthentication localAuth = LocalAuthentication();

  const LoginForm(
      {Key key,
      @required this.onGoToRegister,
      @required this.onGoToForgotPassword})
      : super(key: key);

  void _goTo(BuildContext context, User user) {
    if (user != null) {
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    } else {
      print("login failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        top: false,
        child: Container(
          width: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              InputTextForm(
                iconpath: 'assets/pages/login/mail.svg',
                placeholder: "Email Address",
              ),
              SizedBox(
                height: 10,
              ),
              InputTextForm(
                iconpath: 'assets/pages/login/key.svg',
                placeholder: "Password",
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: CupertinoButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontFamily: 'sans'),
                  ),
                  onPressed: onGoToForgotPassword,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RoundButtonLog(
                label: "Sign in",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () async {
                  bool weCanCheckBiometrics =
                      await localAuth.canCheckBiometrics;
                  if (weCanCheckBiometrics) {
                    bool authenticated = await localAuth.authenticate(
                        localizedReason:
                            'Authenticate to see your bank statement');
                    if (authenticated) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    }
                  }
                },
                icon: Icon(
                  Icons.fingerprint,
                ),
                iconSize: 70,
                color: Color(0xff448AFF),
              ),
              SizedBox(
                height: 15,
              ),
              Text(" or continue with"),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleButton(
                    iconPath: 'assets/icons/facebook-02.svg',
                    size: 55,
                    backgroundColor: Color(0xff448AFF),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleButton(
                    iconPath: 'assets/icons/google.svg',
                    size: 55,
                    backgroundColor: Color(0xffFF1744),
                  ),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("dont have and account?"),
                    CupertinoButton(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontFamily: 'sans', fontWeight: FontWeight.w600),
                        ),
                        onPressed: onGoToRegister)
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
