
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterPage extends StatelessWidget{

  final textStyle = TextStyle(fontSize: 28.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number clicks',style: textStyle,),
            Text('0',style: textStyle,),
          ],
        ) 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Button pressed'),
        child: Icon(Icons.add),
      ),
    );
  }
}