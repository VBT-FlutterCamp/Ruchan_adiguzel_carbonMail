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
              Text(
                "Substcriptions ($numberOfSubs) ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff3c4c6e)),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(
                  "25% CLEANED",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  title: Text("Coding Journey"),
                  subtitle: Text("https link"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ),
              itemCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
