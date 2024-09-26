import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridviewbuilder(),));
}
class Gridviewbuilder extends StatefulWidget {
  const Gridviewbuilder({super.key});

  @override
  State<Gridviewbuilder> createState() => _GridviewbuilderState();
}

class _GridviewbuilderState extends State<Gridviewbuilder> {
  var color=[Colors.yellow,Colors.blue,Colors.green,Colors.red,Colors.purple,Colors.pink];
  var iconss=[Icons.account_balance,
  Icons.add_alert,
  Icons.access_alarm_rounded,
  Icons.sunny_snowing,
  Icons.add_business,
  Icons.add_call];
  var date=["account_balance",
    "add_alert",
    "access_alarm_rounded",
    "sunny_snowing",
    "add_business",
    "add_call"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2), itemBuilder: (context,index){
        return Container(color: color[index],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconss[index]),
            Text(date[index])
          ],
        ),);
      },itemCount: iconss.length,
      ),
    );
  }
}
