import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview()));
}
class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          crossAxisSpacing: 10,mainAxisSpacing: 10),
      children: [
        Container(child: Center(child: Text("A"),),color: Colors.red,),
        Container(child: Center(child: Text("B"),),color: Colors.blue,),
        Container(child: Center(child: Text("C"),),color: Colors.green,),
        Container(child: Center(child: Text("D"),),color: Colors.yellow,),

      ],)

    );
  }
}
