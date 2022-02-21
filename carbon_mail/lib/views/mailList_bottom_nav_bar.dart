import 'package:carbon_mail/core/constants/color_constants.dart';
import 'package:carbon_mail/core/constants/string_constants.dart';
import 'package:flutter/material.dart';

class FirstPageView extends StatefulWidget {
  FirstPageView({Key? key}) : super(key: key);

  @override
  State<FirstPageView> createState() => _FirstPageViewState();
}

class _FirstPageViewState extends State<FirstPageView> {
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
            child: ListView.builder(
              itemBuilder: (context, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: ItemWidget(),
              ),
              itemCount: 20,
            ),
          )
        ],
      ),
    );
  }

  ListTile ItemWidget() {
    return ListTile(
      title: Text("Coding Journey"),
      subtitle: Text("https link"),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.delete,
          color: ColorConstants.primaryColor,
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
