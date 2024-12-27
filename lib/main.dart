import 'package:flutter/material.dart';
import 'package:ekidduka/routes.dart';
import 'package:ekidduka/theme/theme.dart';
import 'package:ekidduka/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MotoFix',
      theme: theme(), //custom theme
      initialRoute:
          SplashScreen.routeName, // Set initial screen to SplashScreen
      routes: routes, // Routes configuration
    );
  }
}
