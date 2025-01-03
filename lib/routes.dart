import 'package:ekidduka/screens/activity_page.dart';
import 'package:ekidduka/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:ekidduka/screens/splash/splash_screen.dart';
import 'package:ekidduka/screens/home_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  '/home': (context) => const HomeScreen(),
  '/activity': (context) => const ActivityPage(),
  '/profile': (context) => const ProfileScreen(),
};