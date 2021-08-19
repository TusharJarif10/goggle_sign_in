import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goggle_sign_in/provider/google_sign_in.dart';
import 'package:goggle_sign_in/widget/Logged_in_widget.dart';
import 'package:goggle_sign_in/widget/sign_up_widget.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot){
            final provider = Provider.of<GoogleSignInProvider>(context);
            if (provider.isSigningIn){
              return buildLoading();
            }else if(snapshot.hasData){
              return LoggedInWidget();
            }
            else {
              return SignUpWidget();
            }
            },
           ),
      ),
    );
  Widget buildLoading() => Center(child: CircularProgressIndicator());
}
