import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'grid.dart';
import 'listseperatdeg.dart';
void main(){
  runApp(MaterialApp(home: Namedrout(),
  routes: {
    "grid" : (context)=>Gridview(),
    "list" : (context)=>Listsepereted(),
  },));
}
class Namedrout extends StatelessWidget {
  const Namedrout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
      child : Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "grid",);
          }, child: Text("Screen1")),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "list");
          }, child: Text("Screen2")),

        ],
      ),
    ),);
  }
}
