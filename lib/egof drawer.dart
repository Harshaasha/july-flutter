import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Egofdrawerwer(),));
}
class Egofdrawerwer extends StatefulWidget {
  const Egofdrawerwer({super.key});

  @override
  State<Egofdrawerwer> createState() => _EgofdrawerwerState();
}

class _EgofdrawerwerState extends State<Egofdrawerwer> {
  int index=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Icon(Icons.home),
        backgroundColor: Colors.green,


      ),
      drawer: Drawer(backgroundColor: Colors.lightBlueAccent,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("harsha"),
              accountEmail: Text("harsha@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/img.png"),
              ),
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/images/img_1.png"),
                  fit: BoxFit.fill)),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("Update"),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Send"),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text("Draft"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),

          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.chat,),label: "chat"),
            BottomNavigationBarItem(icon: Icon(Icons.update,),label: "Update"),
            BottomNavigationBarItem(icon: Icon(Icons.call_sharp,),label: "Calls"),
          ]),

    );

  }
}
