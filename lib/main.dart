import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:news_app/view/detail_page.dart';
import 'package:news_app/view/home_page.dart';
import 'package:news_app/view/splash_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => SplashScreen(),transition: Transition.leftToRight),
        GetPage(name: '/home', page: () => HomePage(),),
      ],
    );
  }
}
