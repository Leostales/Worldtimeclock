import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    try {
      data = ModalRoute.of(context)!.settings.arguments as Map;
    }
    catch (e) {
      data = data;
    }
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location')
            ),
          ],
        ),
      ),
    );
  }
}