import 'package:flutter/material.dart';
import 'package:election_exit_poll_620710671/models/per_item.dart';

class perListPage extends StatefulWidget {
  static const routeName = '/food_list';

  const perListPage({Key? key}) : super(key: key);

  @override
  _perListPageState createState() => _perListPageState();
}

class _perListPageState extends State<perListPage> {
  //final items = List<String>.generate(1000, (index) => 'Item $index');


@override
Widget build(BuildContext context) {
  return Container(
    child: ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        //Map<String, dynamic> item = items[index];
        var item = items[index];
        return Card(
          margin: const EdgeInsets.all(10.0),
          // const for once create in first time of 1000 loops
          child: InkWell(
            onTap: () {
              print(item.toString());
              var perDetailsPage;
              Navigator.pushNamed(
                context,
                perDetailsPage.routeName, //FoodDetails,
                arguments: item,
              );
            },
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //item["name"] as String,
                      item.displayName,
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyText1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}}
