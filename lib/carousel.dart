import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Carouseleg(),));
}

class Carouseleg extends StatefulWidget {
  const Carouseleg({super.key});

  @override
  State<Carouseleg> createState() => _CarouselegState();
}

class _CarouselegState extends State<Carouseleg> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(child:
      CarouselSlider(
          items: [
            Image(image: AssetImage("assets/images/img.png"),fit: BoxFit.fill,),
            Image(image: AssetImage("assets/images/Butterfly.png"),fit: BoxFit.fill,),
            Image(image: AssetImage("assets/images/heart.png"),fit: BoxFit.fill,),
            Image(image: AssetImage("assets/images/img_1.png"),fit: BoxFit.fill,),


          ],
          options: CarouselOptions(
            height: 400,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          )
      )
        ,),
    );
  }
}
