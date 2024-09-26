import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: Listviewcustm(),));
// }
class Listviewcustm extends StatelessWidget {
  var name=["arun","varun","tharun","karan"];
  var phone=["4325167897","9087654567","8767655654","9112345678"];
  var image=["assets/images/img.png","assets/images/img.png","assets/images/img.png","assets/images/img.png"];
  var color=[Colors.yellow,Colors.blue,Colors.green,Colors.pink];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index) {
        return Card(
          color: color[index],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
            title: Text(name[index]),
            trailing: Wrap(
              children: [
                Icon(Icons.edit),
                SizedBox(width: 5,),
                Icon(Icons.delete)
              ],
            ),
          ),
        );
      },childCount: name.length,
      )),
    );
  }
}
