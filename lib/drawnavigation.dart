import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Drawnavigation(),));
}
class Drawnavigation extends StatefulWidget {
  const Drawnavigation({super.key});

  @override
  State<Drawnavigation> createState() => _DrawnavigationState();
}

class _DrawnavigationState extends State<Drawnavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(backgroundColor: Colors.lightBlueAccent,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("harsha"),
                accountEmail: Text("harsha@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/img.png"),
              ),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("assets/images/img.png"),
                ),
                CircleAvatar(backgroundImage: AssetImage("assets/images/img.png"),
                ),

              ],
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
    );
  }
}
