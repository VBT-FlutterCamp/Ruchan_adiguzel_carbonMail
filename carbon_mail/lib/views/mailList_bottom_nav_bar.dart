import 'package:carbon_mail/core/constants/color_constants.dart';
import 'package:carbon_mail/core/constants/string_constants.dart';
import 'package:carbon_mail/model/user_model.dart';
import 'package:carbon_mail/service/network_manager.dart';
import 'package:flutter/material.dart';

class MailListView extends StatefulWidget {
  MailListView({Key? key}) : super(key: key);

  @override
  State<MailListView> createState() => _MailListViewState();
}

class _MailListViewState extends State<MailListView> {
  NetworkManager _manager = NetworkManager();
  @override
  Widget build(BuildContext context) {
    var numberOfSubs = 5;
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Column(
        children: [
          MailListHeader(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubsText(numberOfSubs, context),
              PercentText(context),
            ],
          ),
          Expanded(
            child: FutureBuilder(
              builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
                if (snapshot.hasData) {
                  return ListViewBuilder(snapshot);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
              future: _manager.getAllPost(),
            ),
          )
        ],
      ),
    );
  }

  ListView ListViewBuilder(AsyncSnapshot<List<UserModel>> snapshot) {
    return ListView.builder(
      itemBuilder: (context, index) => ItemWidget(
          snapshot.data?[index].title, snapshot.data?[index].id.toString()),
      itemCount: snapshot.data?.length,
    );
  }

  Card ItemWidget(String? title, String? Subtitle) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        title: Text(
          title ?? "",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        subtitle: Text(Subtitle.toString()),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete,
            color: ColorConstants.primaryColor,
          ),
        ),
      ),
    );
  }

  Container PercentText(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Color(0xff3c4c6e)),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Text(
        "25% CLEANED",
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }

  Text SubsText(int numberOfSubs, BuildContext context) {
    return Text(
      "Substcriptions ($numberOfSubs) ",
      style: Theme.of(context).textTheme.bodyText1,
    );
  }

  Container MailListHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, bottom: 20),
      child: Text(
        StringConstants.mailListHeader,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
