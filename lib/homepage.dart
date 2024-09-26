import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Homepage(),));
}
class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          Card(color: Colors.red[200],
          child: ListTile(
          // leading:CircleAvatar(backgroundImage: AssetImage("assets/images/img.png"),),
            leading:Image(image: AssetImage("assets/images/img.png")),
            title: Text("amal"),
            subtitle: Text("9723165490"),
            trailing: Icon(Icons.call),
          )

          ),
          Card(color: Colors.red[200],
            child: ListTile(
              leading: Image(image: AssetImage("assets/images/img.png")),
              title: Text("amal"),
              subtitle: Text("9723165490"),
              trailing: Icon(Icons.call),

      ),
    ),
    Card(color: Colors.red[200],
    child: ListTile(
    leading: Image(image: AssetImage("assets/img.png")),
    title: Text("amal"),
    subtitle: Text("9723165490"),
    trailing: Icon(Icons.call),


    ),
    ),
    ],),
    );
}
}