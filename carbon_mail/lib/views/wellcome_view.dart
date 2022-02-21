import 'package:flutter/material.dart';

import 'bottom_navbar_controller.dart';

class WellComeView extends StatelessWidget {
  const WellComeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.network(
          "https://picsum.photos/1080/1920", //For now, TODO place upplab image here
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Cleaning your inbox has never been easier.",
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                    "Clean up old subscription and say no to email carbon!") //TODO fix that area
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavbarControllerView(),
                      ));
                },
                child: Text("Get Started  >>")) //TODO fix that area
          ],
        )
      ]),
    );
  }
}
