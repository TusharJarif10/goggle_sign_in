import 'package:flutter/material.dart';
import 'google_signup_button_widget.dart';

class SignUpWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) => buildSignUp();

  Widget buildSignUp() => Column(
    children: [
      Spacer(),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 175,
            child: Text(
              'Welcome To Google Sign In',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
      Spacer(),
      GoogleSignupButtonWidget(),
      SizedBox(height: 12,),
      Text(
        'Login to Continue',
        style: TextStyle(fontSize: 16),
      ),
      Spacer(),
    ],
  );
}
