import 'dart:developer';

import 'package:dio/dio.dart';

import 'models/category_model.dart';
//import 'package:http/http.dart' as http;

class HomeController {
  final dio = Dio();
  //final dio.httpClientAdapter = BrowserClientAdapter();
  final imgList = [
    'http://placehold.it/900x300',
    'http://placekitten.com/1000/300',
    'http://placehold.it/900x300',
    'http://placekitten.com/1000/300',
  ];

  getBanner() async {
    const url =
        'https://directus-production-e852.up.railway.app/items/categories';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        CategoryModel categoryModel =
            CategoryModel.fromJson(response.data as Map<String, dynamic>);
        log('id: ${categoryModel.data[0].id}');
        log('name: ${categoryModel.data[0].name}');
        log('imageUrl: ${categoryModel.data[0].imageUrl}');
      } else {
        log('error');
      }
    } catch (e, s) {
      log('ERRO: ', error: e, stackTrace: s);
    }
  }
}
