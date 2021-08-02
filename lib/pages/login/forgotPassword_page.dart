import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:precio_app/pages/widgets/round_button.dart';
import '../widgets/input_text_login.dart';

class ForgotPasswordForm extends StatefulWidget {
  final VoidCallback onGoToLogin;

  const ForgotPasswordForm({Key key, @required this.onGoToLogin})
      : super(key: key);

  static final routeName = 'register';

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  bool _agree = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SafeArea(
        top: false,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          constraints: BoxConstraints(maxWidth: 400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Reset Password",
                style: TextStyle(
                    color: Color(0xff5499C7),
                    fontSize: 30,
                    fontFamily: 'raleway',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Tu no entras en su clase social",
                style: TextStyle(
                  fontFamily: 'raleway',
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InputTextForm(
                iconpath: 'assets/pages/login/mail.svg',
                placeholder: "Email Address",
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: widget.onGoToLogin,
                    child: Text("<-- Back to Login"),
                  ),
                  SizedBox(width: 10),
                  RoundButtonLog(
                    label: "Send",
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
