import 'package:flutter/material.dart';
import 'package:election_exit_poll_620710671/models/per_item.dart';

class perDetailsPage extends StatefulWidget {
  static const routeName = '/per_details';

  const perDetailsPage({Key? key}) : super(key: key);

  @override
  _perDetailsPageState createState() => _perDetailsPageState();
}

class _perDetailsPageState extends State<perDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments as perItem;
    return Scaffold(
      appBar: AppBar(
        title: Text(item.displayName),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'ผู้สมัคร: ${item.displayName}',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}
