import 'package:flutter/material.dart';
import 'package:wallet_app_v2/screens/auth/login_screen.dart';
import 'package:wallet_app_v2/screens/auth/register_step_one_screen.dart';
import 'package:wallet_app_v2/screens/auth/register_step_three_screen.dart';
import 'package:wallet_app_v2/screens/auth/register_step_two_screen.dart';
import 'package:wallet_app_v2/screens/splash/splash_screen.dart';

class Routes {

  static const ROOT = '/';
  static const LOGIN = 'login';
  static const REGISTER_ONE = 'register/one';
  static const REGISTER_TWO = 'register/two';
  static const REGISTER_THREE = 'register/three';
  static const FORGOT_PASSWORD = 'forgot_password';
  static const HOME = 'home';
  static const USER_ACOUNT = 'user/account';
  static const USER_PREFERENCES = 'user/preferences';
  static const USER_PRIVACY = 'user/privacy';

  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      ROOT: (context) => SplashScreen(),
      LOGIN: (context) => LoginScreen(),
      REGISTER_ONE: (context) => RegisterStepOneScreen(),
      REGISTER_TWO: (context) => RegisterStepTwoScreen(),
      REGISTER_THREE: (context) => RegisterStepThreeScreen(),
      FORGOT_PASSWORD: (context) => Center(child: Text('FORGOT'),),
      HOME: (context) => Center(child: Text('HOLA'),),
      USER_ACOUNT: (context) => Center(child: Text('HOLA'),),
      USER_PREFERENCES: (context) => Center(child: Text('HOLA'),),
      USER_PRIVACY: (context) => Center(child: Text('HOLA'),),
    };
  }
}
