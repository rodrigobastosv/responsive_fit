import 'package:flutter/material.dart';

import 'responsive_fit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Container(
            width: 105.pw(context),
            child: RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.all(context.pw(13)),
              color: Colors.blue,
              child: Text(
                'Responsive',
                style: TextStyle(
                  fontSize: 3.ip(context),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
