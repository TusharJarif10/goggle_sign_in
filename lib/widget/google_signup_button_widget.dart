import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:goggle_sign_in/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
         padding: EdgeInsets.all(4),
    child: OutlinedButton.icon(
      label: Text(
        'Sign In With Goggle',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
      ),
      icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
      onPressed: () {
        final provider =
            Provider.of<GoogleSignInProvider>(context, listen: false);
        provider.login();

      },


    ),
  );


}
