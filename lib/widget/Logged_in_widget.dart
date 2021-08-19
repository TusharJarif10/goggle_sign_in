import 'package:goggle_sign_in/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'business_page.dart';

class LoggedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Container(
      alignment: Alignment.center,
      color: Colors.black54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Logged In",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 15,),
          CircleAvatar(
            maxRadius: 25,
            backgroundImage: NetworkImage(user.photoURL),
          ),
          SizedBox(height: 8,),
          Text(
            'Name: ' + user.displayName,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            'Email: ' +user.email,
            style: TextStyle(color: Colors.white),
          ),
          // SizedBox(height: 8),
          // Text(
          //   'Phone: ' +user.phoneNumber,
          //   style: TextStyle(color: Colors.white),
          // ),
          SizedBox(height: 8),
         ElevatedButton(
           style: ElevatedButton.styleFrom(
             primary: Colors.orange,
             onPrimary: Colors.black,
           ),
           onPressed: () {
             final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
             provider.logout();
           },
           child: Text("logout",
           style: TextStyle(
             fontSize: 16, fontWeight: FontWeight.bold,
           ),
           ),
         ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlueAccent,
              onPrimary: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BusinessPage()),
              );
              },
            child: Text("Home Page",
              style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
