import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/pages/home_page.dart';
import 'package:splash_screen/pages/onboard_page.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? firstTime = prefs.getBool('first_time');

    var _duration = const Duration(seconds: 3);

    if (firstTime != null && !firstTime) {
      // Not first time
      return Timer(
          _duration,
          () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const HomePage();
              })));
    } else {
      // First time
      prefs.setBool('first_time', false);
      return Timer(
          _duration,
          () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const OnboardScreen();
              })));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img3.png',
              width: 100,
              height: 100,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
