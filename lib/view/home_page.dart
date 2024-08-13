import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:news_app/view/componets/apple.dart';
import 'package:news_app/view/componets/business.dart';
import 'package:news_app/view/componets/headLine.dart';
import 'package:news_app/view/componets/stock.dart';

NewsController newsController = Get.put(NewsController());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0xff202020),
        appBar: AppBar(
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications,color: Colors.white,),
          )],
          title: Container(
            alignment: Alignment.centerLeft,
            height: 100,
              width: 140,
              child: Image.asset(
                fit: BoxFit.cover,
                  'assets/images/Screenshot_2024-08-14_000756-removebg-preview.png')),
          backgroundColor: const Color(0xff202020),
          bottom: const TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            indicatorColor: Colors.white,
            // indicator: BoxDecoration(),
            indicatorWeight: 4,
            tabs: [
              Tab(
                child: Text(
                  'Apple',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Text(
                'Tesla',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'Business',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'HeadLine',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'Stock',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildApple(context),
            buildStock(context),
            buildBusiness(context),
            buildHeadLine(context),
            buildStock(context),
          ],
        ),
      ),
    );
  }
}
