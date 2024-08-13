import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../modal/news_modal.dart';
import '../home_page.dart';

FutureBuilder<NewsModal?> buildApple(BuildContext context) {
  final h = MediaQuery.of(context).size.height;
  final w = MediaQuery.of(context).size.width;
  return FutureBuilder(
    future: newsController.appleMap(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return ListView.builder(
          itemCount: newsController.newsModal!.articles.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              newsController.selectedIndex(index);
              newsController.urlLaunch(newsController.newsModal!.articles[newsController.selectIndex].url);
              // Get.toNamed('/detail');
            },
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 18.0,
                          ),
                          child: Container(
                            height: h*0.22,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit:  (newsController.newsModal!.articles[index].urlToImage == '') ? null : BoxFit.cover,
                                image: (newsController.newsModal!.articles[index].urlToImage == '')
                                    ? NetworkImage(
                                        'https://direct.dailyhunt.in/assets/selfserve/img/dailyhunt-logo-white.png')
                                    : NetworkImage(
                                        '${newsController.newsModal!.articles[index].urlToImage}'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          newsController.newsModal!.articles[index].title,
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: h*0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              newsController
                                  .newsModal!.articles[index].source.name,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.messenger_outline,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                  fit: BoxFit.cover,
                                  'assets/images/download-removebg-preview.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white54,
                  indent: 15,
                  endIndent: 15,
                  thickness: 1,
                )
              ],
            ),
          ),
        );
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}
