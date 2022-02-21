import 'package:carbon_mail/model/user_model.dart';
import 'package:carbon_mail/service/network_manager.dart';
import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  NetworkManager manager = NetworkManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: FutureBuilder(
          builder: (context, snapshot) {
            var list = snapshot.data;
            if (snapshot.hasData) {
              return Text(snapshot.data.toString());
            }
            print(snapshot.connectionState);
            return CircularProgressIndicator();
          },
          future: manager.getHttp(),
        ),
      ),
    );
  }
}
