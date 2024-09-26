import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: Gridviewegextend(),));
// }
class Gridviewegextend extends StatefulWidget {
  const Gridviewegextend({super.key});

  @override
  State<Gridviewegextend> createState() => _GridviewegextendState();
}

class _GridviewegextendState extends State<Gridviewegextend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,crossAxisSpacing: 10,mainAxisSpacing: 10),
      children: [
        Container(child: Center(child: Text("red"),),color: Colors.red,),
        Container(child: Center(child: Text("blue"),),color: Colors.blue,),
        Container(child: Center(child: Text("purple"),),color: Colors.purple,),
        Container(child: Center(child: Text("yellow"),),color: Colors.yellow,),
        Container(child: Center(child: Text("green"),),color: Colors.green,),
        Container(child: Center(child: Text("orange"),),color: Colors.orange,),

      ],
        ),
    );
  }
}


