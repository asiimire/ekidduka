import 'package:flutter/material.dart';
import 'package:ekidduka/screens/splash/splash_screen.dart';
import 'package:ekidduka/screens/home_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  '/home': (context) => const HomeScreen(), // Add your home screen route
};