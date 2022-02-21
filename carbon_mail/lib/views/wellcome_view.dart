import 'package:carbon_mail/core/constants/color_constants.dart';
import 'package:carbon_mail/core/constants/string_constants.dart';
import 'package:carbon_mail/views/mailList_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'bottom_navbar_controller.dart';

class WellComeView extends StatelessWidget {
  const WellComeView({Key? key}) : super(key: key);
  final EdgeInsets _bodyPad =
      const EdgeInsets.only(bottom: 5, left: 60, right: 60, top: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              HeaderText(context),
              BodyText(context) //TODO fix that area
            ],
          ),
          NextPageBtn(context)
        ],
      ),
    );
  }

  GestureDetector NextPageBtn(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BottomNavbarControllerView())),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        margin: const EdgeInsets.only(bottom: 50),
        child: Text(
          StringConstants.wellcomeBtnText,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget BodyText(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Text(
        StringConstants.wellcomeBody,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(fontSize: 18, color: ColorConstants.lightGrey),
        textAlign: TextAlign.center,
      ),
    );
  }

  Container HeaderText(BuildContext context) {
    return Container(
      padding: _bodyPad,
      margin: EdgeInsets.only(top: 30),
      child: Text(
        StringConstants.wellcomeHeader,
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(color: ColorConstants.lightGrey),
        textAlign: TextAlign.center,
      ),
    );
  }
}
