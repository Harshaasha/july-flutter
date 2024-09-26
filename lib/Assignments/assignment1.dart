import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listviewbuild(),));
}
class Listviewbuild extends StatelessWidget {
  var firstletter=["F","A","i","H","A","A","A","M","F"];
  var name=["Facebook","A10 NETWOKS INC","intel Corp","HP Inc","Advanced Micro Divices Inc","Apple Inc","Amazon com.Inc","Microsoft Corporation","Facebook"];
  var values=['\$3333','\$1834','\$6654','\$3343','\$3344','\$13256','\$354544','\$20551','\$3321',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(itemBuilder: (context,index)
      {
        return Card(
          color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blue,
              child: Text(firstletter[index],
              style: TextStyle(color: Colors.white) ),
              ),
              title: Text(name[index]),
              trailing: Text("\$ ${values[index]}"),
            ),
        );
      },
      itemCount: firstletter.length,),
    );
  }
}
