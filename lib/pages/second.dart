import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  static final ROUTE='/second';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Yes'),
              onPressed: (){
                Navigator.of(context).pop('Yes');
              },
            ),
            RaisedButton(
              child: Text('No'),
              onPressed: (){
                Navigator.of(context).pop('No');
              },
            )
          ],
        ),),
    );
  }
}