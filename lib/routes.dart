import 'package:flutter/material.dart';
import 'package:ekidduka/screens/splash/splash_screen.dart';
import 'package:ekidduka/screens/home_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  '/home': (context) => HomeScreen(), // Add your home screen route
};