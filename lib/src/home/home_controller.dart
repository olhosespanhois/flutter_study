//import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
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
    const url = 'localhost:3001/category';
    try {
      final response = await dio.get('localhost:3001/product');
      if (response.statusCode == 200) {
        log(response.data.toString());
        final decodedResponse =
            jsonDecode(response.data) as Map<String, dynamic>;
        print(decodedResponse);
      } else {
        print('error');
      }
    } catch (e) {
      print(e);
    }
  }
}
