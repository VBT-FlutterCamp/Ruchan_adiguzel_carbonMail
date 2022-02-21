import 'dart:convert';

import 'package:carbon_mail/model/user_model.dart';
import 'package:dio/dio.dart';

class NetworkManager {
  Dio dio = Dio();
  Future getHttp() async {
    try {
      var response =
          await dio.get("https://jsonplaceholder.typicode.com/todos");
      return response;
    } catch (e) {
      print("Error ");
      return null;
    }
  }
}
