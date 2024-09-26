import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'checked box.dart';
import 'custmwidget.dart';
void main(){
  runApp(MaterialApp(home: custmegg(),));
}
class custmegg extends StatelessWidget {
  const custmegg({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Custmwidget(
          img: Image(image: AssetImage("assets/images/frozen.jpeg")),
          title: Text("Data"),
          subtitle: Text("click here...!!!"),
          iconss: Icon(Icons.account_balance),
          onpress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Checkedbox()));
          },
        ),
      ),
    );
  }
}
