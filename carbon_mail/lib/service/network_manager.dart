// import 'dart:convert';

// import 'package:carbon_mail/model/user_model.dart';
// import 'package:dio/dio.dart';

// class NetworkManager {
//   var url = "https://jsonplaceholder.typicode.com/todos";
//   Dio dio = Dio();
//   Future getHttp() async {
//     try {
//       var response = await dio.get(url);
//       return response;
//     } catch (e) {
//       print("Error ");
//       return null;
//     }
//   }

//   Future<List<UserModel>> fetchMails() async {
//     final response = await dio.get(url);
//     if (response.statusCode == 200) {
//       Iterable items = json.decode(response.data);
//       return items.map((e) => UserModel.fromJson(e)).toList();
//     } else {
//       throw Exception("Error on fetchmails");
//     }
//   }
// }
//TODO IMPLEMENT NETWORK