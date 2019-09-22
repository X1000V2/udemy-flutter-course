import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/src/provider/MenuProvider.dart';

class ComponentsPage extends StatelessWidget {

  final options = ['Component 1','Component 2','Component 3','Component 4','Component 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Components")),
      body: ListView(
        children: _createListWithMap() 
      )
    );
  }

  List<Widget> _createItems(){

    List<Widget> listItems = List<Widget>();

    options.forEach((item){

      final itemView = ListTile(title: Text(item),);
      listItems..add(itemView)
      ..add(Divider());

    });

    return listItems;
  }

  List<Widget> _createListWithMap(){

    menuProvider.loadData();

    return options.map( (item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("data"),
            leading: Icon(Icons.perm_contact_calendar),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              print('Item $item clicked');
            },
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}