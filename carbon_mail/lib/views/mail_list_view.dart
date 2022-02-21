import 'package:flutter/material.dart';

class MailListView extends StatefulWidget {
  MailListView({Key? key}) : super(key: key);

  @override
  State<MailListView> createState() => _MailListViewState();
}

class _MailListViewState extends State<MailListView> {
  int numberOfSubs = 18; //TODO in the future this number will come from service
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Keep up the carbon-free work!",
              style: Theme.of(context).textTheme.headline3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Substcriptions ($numberOfSubs) "),
                Container(
                  child: Text("25% CLEANED"),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text("Coding Journey"),
                    subtitle: Text("https link"),
                    trailing:
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  ),
                ),
                itemCount: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
