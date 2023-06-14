import 'package:firebase_authentication/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_authentication/pages/home_page.dart';
import 'package:firebase_authentication/pages/login_register_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData){ //if a user is signed in, the homepage is displayed
          return HomePage();
        } else { //otherwise the login/register page is shown
          return const LoginPage();
        }
      },
    );
  }
}