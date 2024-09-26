import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Assignments/assignment2.dart';
import 'gridviewegextend.dart';
import 'listviewcustm.dart';
void main(){
  runApp(MaterialApp(home: Tabbareg(),
  debugShowCheckedModeBanner: false,));
}

class Tabbareg extends StatefulWidget {
  const Tabbareg({super.key});

  @override
  State<Tabbareg> createState() => _TabbaregState();
}

class _TabbaregState extends State<Tabbareg> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold (backgroundColor: Colors.white,
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
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            dividerColor: Colors.yellow,
            indicatorColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            tabs: [
            Tab(child: Icon(Icons.camera_alt),),
            Tab(child: Text("Chat"),),
            Tab(child: Text("Status"),),
            Tab(child: Text("call"),),


          ],
          ),
        ),
          body: TabBarView(children: [
            Center(child: Icon(Icons.camera_alt),)
          ]),
        Listbuilder(),
        Gridviewegextend(),
        Listviewcustm(),
        
          ),

            ],
          ),

        ]),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,),
      ),
    );
  }
}

