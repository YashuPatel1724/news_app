import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Api%20Helper/api_helper.dart';
import 'package:news_app/modal/news_modal.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsController extends GetxController
{
  ApiHelper apiHelper = ApiHelper();
  NewsModal? newsModal;
  int selectIndex = 0;

  Future<NewsModal?> appleMap()
  async {
    final data = await apiHelper.appleData();
    newsModal = NewsModal.fromMap(data);
    return newsModal;
  }

  Future<NewsModal?> teslaMap()
  async {
    final data = await apiHelper.teslaData();
    newsModal = NewsModal.fromMap(data);
    return newsModal;
  }

  Future<NewsModal?> businesMap()
  async {
    final data = await apiHelper.businessData();
    newsModal = NewsModal.fromMap(data);
    return newsModal;
  }

  Future<NewsModal?> headLineMap()
  async {
    final data = await apiHelper.headLine();
    newsModal = NewsModal.fromMap(data);
    return newsModal;
  }

  Future<NewsModal?> wallMap()
  async {
    final data = await apiHelper.wallStreet();
    newsModal = NewsModal.fromMap(data);
    return newsModal;
  }

  void selectedIndex(int index)
  {
    selectIndex = index;
  }
  void urlLaunch(String url){
    final Uri uri = Uri.parse(url);
    launchUrl(uri, mode: LaunchMode.inAppWebView);
  }
}