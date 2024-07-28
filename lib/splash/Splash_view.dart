import 'dart:async';

import 'package:flutter/material.dart';

import '../home/view/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
      Timer(const Duration(seconds: 4), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeView(),));
      });
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(gradient: LinearGradient(colors:
      [Color(0xFFFE5E00),
        Color(0xFFFB8D12),],
      begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      )),
      child: Image.asset('assets/images/Union.png'),
    );
  }
}
