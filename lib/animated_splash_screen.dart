import 'package:firebase_authentication/page_route_animation.dart';
import 'package:firebase_authentication/widget_tree_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //gets rid of top and botttom bars
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    //Navigate to the next screen and prevent the user from coming back to the splash screen
    Future.delayed(Duration(milliseconds: 3500), (){
      Navigator.of(context).pushReplacement(
      BouncyPageRoute(widget: WidgetTree())
      );
    }
    );
  }

  @override
  void dispose() {
    //brings back the top and bottom bars
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container()
    );
  }
}
