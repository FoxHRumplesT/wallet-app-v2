import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    startTime();
    super.initState();
  }

  Future<Timer> startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, () => Navigator.of(context).pushReplacementNamed(Routes.LOGIN));
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            width: size.width / 3,
            child: Image(
              image: Image.asset('assets/img/simplepay-logo.png').image
            ),
          ),
        ),
      ),
    );
  }
}