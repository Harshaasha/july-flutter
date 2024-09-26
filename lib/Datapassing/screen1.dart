import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:julyflutter/Datapassing/dummyprdct2.dart';
import 'package:julyflutter/Datapassing/screen2.dart';
void main(){
  runApp(MaterialApp(home: Firstscreeneg(),
    routes: {
    "Secondscreeneg":(context)=>Secondscreeneg(),
    },
  ));
}
class Firstscreeneg extends StatefulWidget {
  const Firstscreeneg({super.key});

  @override
  State<Firstscreeneg> createState() => _FirstscreenegState();
}

class _FirstscreenegState extends State<Firstscreeneg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
        children: dammyproducteg.map((product)=>GestureDetector(
          child: Column(
            children: [
              Text(product["name"]),
              Image(image: AssetImage(product["image"]))
            ],
          ),
          onTap: ()=>getproduct(context,product["id"]),
        )).toList()
      ),
    );
  }

void  getproduct(BuildContext context, product) {
Navigator.pushNamed(context, "Secondscreeneg",arguments: product);
}
}
