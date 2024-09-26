import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Tabbarnavigation(),));
}

class Tabbarnavigation extends StatefulWidget {
  const Tabbarnavigation({super.key});

  @override
  State<Tabbarnavigation> createState() => _TabbarnavigationState();
}

class _TabbarnavigationState extends State<Tabbarnavigation> {
  int index=1;
  var screen=[
    Text("Profile"),
    Text("Chat"),
    Text("Call"),
    Text("Contact"),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          actions: [
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child: Text("Invite")),
                PopupMenuItem(child: Text("Refresh")),
                PopupMenuItem(child: Text("Settings")),
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("LogOut")),


              ];
            })


          ],

        ),
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex){
      setState(() {
        index=tapindex;
      });
    },
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.green,
    // type: BottomNavigationBarType.fixed,
    type: BottomNavigationBarType.shifting,
    backgroundColor: Colors.yellow,
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "Profile"),
    BottomNavigationBarItem(icon: Icon(Icons.chat,),label: "Chat"),
    BottomNavigationBarItem(icon: Icon(Icons.call,),label: "Call"),
    BottomNavigationBarItem(icon: Icon(Icons.contact_page,),label: "Contact"),

    ]),
    body: Center(child: screen[index],),


          );




  }
}
