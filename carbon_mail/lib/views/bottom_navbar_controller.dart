import 'package:carbon_mail/views/mailList_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class BottomNavbarControllerView extends StatefulWidget {
  BottomNavbarControllerView({Key? key}) : super(key: key);

  @override
  State<BottomNavbarControllerView> createState() =>
      _BottomNavbarControllerViewState();
}

class _BottomNavbarControllerViewState
    extends State<BottomNavbarControllerView> {
  int currentIndex = 0;
  int numberOfSubs = 18; //TODO in the future this number will come from service
  void _ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  var navbarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("")),
    BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("")),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.align_vertical_center_outlined,
        ),
        title: Text(""))
  ];

  var listOfViews = [
    FirstPageView(),
    Scaffold(),
    Scaffold(
      body: Center(child: Text("3")),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfViews[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _ontap,
        items: navbarItems,
      ),
    );
  }
}
