import 'package:carbon_mail/model/user_model.dart';
import 'package:http/http.dart' as http;

class NetworkManager {
  String url = "https://jsonplaceholder.typicode.com/todos";
  Future<List<UserModel>> getAllPost() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return userModelFromJson(response.body);
    } else {
      throw Exception("Error");
    }
  }
}
