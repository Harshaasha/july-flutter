import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewextend(),));
}

class Gridviewextend extends StatefulWidget {
  const Gridviewextend({super.key});


  @override
  State<Gridviewextend> createState() => _GridviewextendState();
}

class _GridviewextendState extends State<Gridviewextend> {

  var color=[Colors.yellow,Colors.red,Colors.green,Colors.purple];
  var iconss=[Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarm_rounded,Icons.add_circle,];
  var data=["account_balance","add_alert","access_alarm_rounded","add_circle"];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: GridView.extent(maxCrossAxisExtent: 100,
          children: List.generate(iconss.length, (index){
            return Card(
              child: Column(
                children: [
                  Icon(iconss[index]),
                  Text(data[index])
                ],
              ),
            );
          })),
    );
  }
}
