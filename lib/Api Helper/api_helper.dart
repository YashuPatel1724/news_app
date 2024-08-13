import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class ApiHelper
{
  Future<Map> appleData()
  async {
    Uri url = Uri.parse('https://newsapi.org/v2/everything?q=apple&from=2024-08-12&to=2024-08-12&sortBy=popularity&apiKey=33c4822c1ce1477a9670ac64c23e1165');
    Response response = await http.get(url);

    if(response.statusCode == 200)
      {
        final json =response.body;
        final Map data = jsonDecode(json);
        return data;
      }
    else
      {
        return {};
      }
  }

  Future<Map> teslaData()
  async {
    Uri url = Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2024-07-13&sortBy=publishedAt&apiKey=33c4822c1ce1477a9670ac64c23e1165');
    Response response = await http.get(url);

    if(response.statusCode == 200)
    {
      final json =response.body;
      final Map data = jsonDecode(json);
      return data;
    }
    else
    {
      return {};
    }
  }

  Future<Map> businessData()
  async {
    Uri url = Uri.parse('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=33c4822c1ce1477a9670ac64c23e1165');
    Response response = await http.get(url);

    if(response.statusCode == 200)
    {
      final json =response.body;
      final Map data = jsonDecode(json);
      return data;
    }
    else
    {
      return {};
    }
  }

  Future<Map> headLine()
  async {
    Uri url = Uri.parse('https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=33c4822c1ce1477a9670ac64c23e1165');
    Response response = await http.get(url);

    if(response.statusCode == 200)
    {
      final json =response.body;
      final Map data = jsonDecode(json);
      return data;
    }
    else
    {
      return {};
    }
  }

  Future<Map> wallStreet()
  async {
    Uri url = Uri.parse('https://newsapi.org/v2/everything?domains=wsj.com&apiKey=33c4822c1ce1477a9670ac64c23e1165');
    Response response = await http.get(url);

    if(response.statusCode == 200)
    {
      final json =response.body;
      final Map data = jsonDecode(json);
      return data;
    }
    else
    {
      return {};
    }
  }
}