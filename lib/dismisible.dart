import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Dismisibleeg(),));
}
class Dismisibleeg extends StatefulWidget {
  const Dismisibleeg({super.key});

  @override
  State<Dismisibleeg> createState() => _DismisibleegState();
}

class _DismisibleegState extends State<Dismisibleeg> {
  var date=["date1","date1","date1","date1"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Dismissible(background: Container(color: Colors.blue,),
            secondaryBackground: Container(color: Colors.yellowAccent,),
            key: ValueKey(date),
            child: Center(
        child: Container(color: Colors.greenAccent,height: 50,width: double.infinity,
                child: Text(date[index])),

        ));

      },itemCount: date.length,
      ),
    );
  }
}
