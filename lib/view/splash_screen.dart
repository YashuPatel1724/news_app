import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 6),(){
      Get.offNamed('/home');
    });
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      body: Center(
        child : Image.asset('assets/images/Screenshot_2024-08-14_001354-removebg-preview.png')
      ),
    );
  }
}
