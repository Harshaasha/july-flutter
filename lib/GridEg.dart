import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Grideg(),));
}
class Grideg extends StatefulWidget {
  const Grideg({super.key});

  @override
  State<Grideg> createState() => _GridegState();
}

class _GridegState extends State<Grideg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (appBar: AppBar(title: Column(
      children: [
        Align(alignment: Alignment.center,
        child: Text("Grid View Builder",
          style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.w700,color: Colors.white),
            ),)
      ],
    ),backgroundColor: Colors.blue,),

      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10),
      children: [
        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.car_crash_outlined,color: Colors.black,),Text("Car")
        ],),color: Colors.greenAccent,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bike_scooter,color: Colors.black,),Text("Bicycle")
          ],),color: Colors.blue,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_boat,color: Colors.black,),Text("Boat")
          ],),color: Colors.blueAccent,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bus_alert_outlined,color: Colors.black,),Text("Bus")
          ],),color: Colors.brown,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.train_outlined,color: Colors.black,),Text("Train")
          ],),color: Colors.purple,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_walk,color: Colors.black,),Text("Walk")
          ],),color: Colors.yellow,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.contact_emergency_outlined,color: Colors.black,),Text("Contact")
          ],),color: Colors.blue,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.duo_outlined,color: Colors.black,),Text("Duo")
          ],),color: Colors.redAccent,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.hourglass_bottom_outlined,color: Colors.black,),Text("Hour")
          ],),color: Colors.white30,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mobile_friendly_outlined,color: Colors.black,),Text("Mobile")
          ],),color: Colors.lightBlue,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.message_outlined,color: Colors.black,),Text("Message")
          ],),color: Colors.lightBlueAccent,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.kebab_dining_outlined,color: Colors.black,),Text("Key")
          ],),color: Colors.orange,),


        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.wifi_1_bar_outlined,color: Colors.black,),Text("Wifi")
          ],),color: Colors.green,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bluetooth,color: Colors.black,),Text("Bluetooth")
          ],),color: Colors.redAccent,),

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.smile,color: Colors.black,),Text("Smile")
          ],),color: Colors.yellow,),


      ],),
    );
  }
}
