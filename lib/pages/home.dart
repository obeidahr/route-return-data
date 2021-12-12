import 'package:flutter/material.dart';
import 'package:route_return_data/pages/second.dart';

class Home extends StatelessWidget {
  static final ROUTE='/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home screen'),
      ),
      body: Center(
        child: Column(
          children: [
            MyButton(),
          ],
        ),),
    );
  }
}
class MyButton extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
              child: Text('open second'),
              onPressed: () async{
               var result = await Navigator.pushNamed(context, Second.ROUTE);
              Scaffold.of(context)..removeCurrentSnackBar()..showSnackBar(SnackBar(content: Text('you selected $result'),));
              },
            );
  }
}