import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:precio_app/pages/widgets/round_button.dart';
import '../widgets/input_text_login.dart';

class RegisterForm extends StatefulWidget {
  final VoidCallback onGoToLogin;

  const RegisterForm({Key key, @required this.onGoToLogin}) : super(key: key);

  static final routeName = 'register';

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool _agree = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
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
                "New Account",
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
                iconpath: 'assets/icons/user.svg',
                placeholder: "Username",
              ),
              SizedBox(
                height: 10,
              ),
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
              SizedBox(
                height: 10,
              ),
              InputTextForm(
                iconpath: 'assets/pages/login/key.svg',
                placeholder: " Confirm Password",
              ),
              SizedBox(
                height: 15,
              ),
              DefaultTextStyle(
                style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).textTheme.subtitle1.color),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Checkbox(
                        value: _agree,
                        onChanged: (isChecked) {
                          setState(() {
                            _agree = isChecked;
                          });
                        }),
                    Text("I agree to the"),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Terms of Services",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("&"),
                    InkWell(
                      child: Text(
                        "Private Policy",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    onPressed: widget.onGoToLogin,
                    child: Text("<-- Back to Login"),
                  ),
                  SizedBox(width: 10),
                  RoundButtonLog(
                    label: "Sign Up",
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
