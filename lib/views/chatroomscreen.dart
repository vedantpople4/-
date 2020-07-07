import 'package:flutter/material.dart';
import 'package:flutterfirebase/services/auth.dart';
import 'package:flutterfirebase/views/signin.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  AuthMethods authMethods = new AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 50,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              authMethods.signOut();
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(),
              child: Icon(Icons.exit_to_app),
            ),
          )
        ],
      ),
    );
  }
}
