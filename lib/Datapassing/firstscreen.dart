import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:julyflutter/Datapassing/secondscreen.dart';

import 'dummyproduct.dart';
void main(){
  runApp(MaterialApp(home: Firstscreen(),
    routes: {
    "Secondscreen":(context)=>Secondscreen(),
    },
  ));
}

class Firstscreen  extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _State();
}

class _State extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: ListView(
        children: dammyproduct.map((product)=>GestureDetector(
          child: Column(
            children: [
              Text(product["name"]),
              Image(image: AssetImage(product["image"]))
            ],
          ),
          onTap: ()=>getproduct(context,product["id"]),
        )).toList(),
          )


      );

  }
  void getproduct(BuildContext context, product){
    Navigator.pushNamed(context, "Secondscreen",arguments: product);
  }
}
