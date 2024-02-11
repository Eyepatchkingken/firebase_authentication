import 'package:firebase_authentication/animated_splash_screen.dart';
import 'package:firebase_authentication/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:firebase_authentication/widget_tree_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const SplashScreen(),
    );
  }

 
}

