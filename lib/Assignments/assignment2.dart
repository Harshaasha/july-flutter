import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Listbuilder(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

class Listbuilder extends StatelessWidget {
  var first = ["J", "B", "E", "A", "A", "W", "E", "O"];
  var name = ["John Judah", "Bisola Akanbi", "Eghosa Iku", "Andrew Ndebuisi", "Arinze Dayo", "Wakara Zimbu", "Emaechi Chinedu", "Osaretin Igbinomwanhia"];
  var phone = ["9874561230", "9874561230", "9874561230", "9874561230", "9874561230", "9874561230", "9874561230", "9874561230"];
  var color = [Colors.blue, Colors.purple, Colors.orange, Colors.blue, Colors.green, Colors.red, Colors.yellow, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Simple Contact List",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  foregroundColor: Colors.white,
                  backgroundColor: color[index],
                ),
                title: Text(name[index]),
                trailing: Icon(Icons.navigate_next),
                subtitle: Text(phone[index]),
              ));
        },
        itemCount: name.length,
      ),
    );
  }
}
