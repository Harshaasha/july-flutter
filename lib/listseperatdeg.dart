import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listsepereted(),));
}
class Listsepereted extends StatelessWidget {
var month=["jan","feb","mar","apr","may","jun","july","aug","sep","oct","nov","dec"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.separated(itemBuilder: (context,index){
      return Card(
      child: Text(month[index]),
      );
},
separatorBuilder: (context,index){
      if(index %3==0) {
        return Card(
          child: Container(color: Colors.red,
            child: Text("Advertisment",
            ),
          ),
        );
      }
    else{
    return SizedBox();
    }

    },
    itemCount: 12,),
    );
  }
}








