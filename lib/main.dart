import 'package:app/splash/Splash_view.dart';
import 'package:flutter/material.dart';

import 'core/application_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ApplicationThemeManager.theme,
      home: SplashView(),
    );
  }
}

