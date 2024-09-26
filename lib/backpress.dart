import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Backpress(),));
}
class Backpress extends StatefulWidget {
  const Backpress({super.key});

  @override
  State<Backpress> createState() => _BackpressState();
}

class _BackpressState extends State<Backpress> {
  Future<bool>showdailopop()async{
    return await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Exit..!!!!"),
        content: Text("Do You What To Exit ?"),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop(true);
          }, child: Text("Yes")),
          TextButton(onPressed: (){
            Navigator.of(context).pop(true);
          }, child: Text("No")),

        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop:showdailopop,
      child: Scaffold ());

  }
}
