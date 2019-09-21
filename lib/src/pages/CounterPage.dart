import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterPage extends StatefulWidget {

  @override
  createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {

  final textStyle = TextStyle(fontSize: 28.0);

  int _counter = 0;

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
          Text(
            'Number clicks',
            style: textStyle,
          ),
          Text(
            '$_counter',
            style: textStyle,
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _createButtons()
    );
  }

  Widget _createButtons(){
    return Row(
      children: <Widget>[
        SizedBox(width: 10.0,),
        FloatingActionButton(heroTag: "btn1", onPressed: () => _reset(),child: Icon(Icons.exposure_zero),),
        Expanded(child: SizedBox(),),
        FloatingActionButton(heroTag: "btn2", onPressed: () => _decrement(),child: Icon(Icons.remove),),
        SizedBox(width: 10.0,),
        FloatingActionButton(heroTag: "btn3", onPressed: () => _increment(),child: Icon(Icons.add),),
        SizedBox(width: 10.0,),
      ],
    );
  }

  _decrement(){
    if(_counter > 0)
    setState(() {
        _counter--;
    });
  }
  _increment(){
    setState(() {
        _counter++;
    });
  }

  _reset(){
    setState(() {
        _counter = 0;
    });
  }
}
