import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Storepg(),debugShowCheckedModeBanner: false,));
}
class Storepg extends StatefulWidget {
  const Storepg({super.key});

  @override
  State<Storepg> createState() => _StorepgState();
}

class _StorepgState extends State<Storepg> {
  int index=0;
  //var screen=[Text("grid"),Text("bell"),Text("cart"),Text("profile")];
  @override
  Widget build(BuildContext context) {
    return Scaffold (
     // drawer:Drawer(),
      body: CustomScrollView(
        slivers: [SliverAppBar(
          floating: true,
          pinned: true,
          backgroundColor: Colors.white,
          title: Text("Store"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),

          ],
          bottom: AppBar(
            title: Container(
              color: Colors.white,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for product",
                    prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.adjust_outlined)
                ),
              ),
            ),
          ),

          expandedHeight: 140,

        )],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },
        selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.grid_view)),
        BottomNavigationBarItem(icon: Icon(Icons.doorbell_outlined)),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined)),
        BottomNavigationBarItem(icon: Icon(Icons.person)),

      ]),
//body: center(child: screen[index],),
    );
  }

}
