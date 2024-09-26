import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listbuilder(),));
}
class Listbuilder extends StatelessWidget {

  var name=["arun","ammu","varun","pinkii"];
  var phone=["9412349850","4312098976","5413286854","7645321289"];
  var image=["assets/images/img.png","assets/images/img.png","assets/images/img.png","assets/images/img.png"];
  var color=[Colors.yellow,Colors.blue,Colors.black,Colors.pink];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          color: color[index],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
            title: Text(name[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),
          )
        );
      },itemCount: name.length,
      ),
    );
  }
}



