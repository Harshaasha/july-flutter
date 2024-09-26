import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sample(),
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
        backgroundColor: Colors.red,
      ),
      body: Container(decoration: BoxDecoration(gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.red,
                  Colors.black,
                  Colors.red],

                begin: Alignment.topRight,
                end: Alignment.topLeft)),

        height: double.infinity,
        width: double.infinity,
        // color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // Icon(Icons.account_balance,size: 50,color: Colors.white,),
            Image(image: AssetImage("assets/images/frozen.jpeg")),
             Text("flutter",
                 style: TextStyle(
                     fontSize: 60,
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontStyle: FontStyle.italic),
               ),
          ],
        ),
      ),
    );
  }
}
