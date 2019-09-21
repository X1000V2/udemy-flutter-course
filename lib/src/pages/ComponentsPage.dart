import 'package:flutter/material.dart';

class ComponentsPage extends StatefulWidget {
  ComponentsPage({Key key}) : super(key: key);

  _ComponentsPageState createState() => _ComponentsPageState();
}

class _ComponentsPageState extends State<ComponentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Components")),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}