import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Bottamsheet(),));
}

class Bottamsheet extends StatefulWidget {
  const Bottamsheet({super.key});

  @override
  State<Bottamsheet> createState() => _BottamsheetState();
}

class _BottamsheetState extends State<Bottamsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: GestureDetector(child: Text("show"),
          onTap: ()=>show(context),
        ),
      ),
    );
  }

  show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return ListView(
        children: [
          ListTile(
            title: Text("data1"),
            subtitle: Text("datalist1"),
          ),
          ListTile(
            title: Text("data2"),
            subtitle: Text("datalist2"),
          ),
          ListTile(
            title: Text("data3"),
            subtitle: Text("datalist3"),
          ),
          ListTile(
            title: Text("data4"),
            subtitle: Text("datalist4"),
          ),


        ],
      );
    });
  }
}
