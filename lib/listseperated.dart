import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listseperated()));
}
class Listseperated extends StatelessWidget {
var name=["ashu","ammu","achu","liya"];
var color=[Colors.purple,Colors.pink,Colors.orange,Colors.yellow];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Seperated"),
      ),
      body: ListView.separated(
          itemBuilder: (context,index){
        return Card(color: color[index],
    child: ListTile(
    title: Text(name[index]),
    ),
    );
    },
    separatorBuilder: (context,index){
        return Divider(
        thickness: 5,
        color: Colors.green,
        );
    },
    itemCount: name.length),
    );
  }
}
