import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custmui extends StatelessWidget {
 // const Custmui({super.key});
  var color=[Colors.yellow,Colors.red,Colors.green,Colors.purple];
  var iconss=[Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarm_rounded,
    Icons.add_circle,];
  var data=["account_balance",
    "add_alert",
    "access_alarm_rounded",
    "add_circle"];


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: GridView.builder(gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context[index])),

    );
  }
}
