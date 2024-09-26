import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: FarmersCarousel(),));
}
class FarmersCarousel extends StatefulWidget {
  const FarmersCarousel({super.key});

  @override
  State<FarmersCarousel> createState() => _FarmersCarouselState();
}

class _FarmersCarouselState extends State<FarmersCarousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: Container(child:
        CarouselSlider(
        items: [
        Image(image: AssetImage("assets/images/fruits1.jpeg"),fit: BoxFit.fill,),
    Image(image: AssetImage("assets/images/apple 1.jpg"),fit: BoxFit.fill,),
    Image(image: AssetImage("assets/images/vegitables.jpeg"),fit: BoxFit.fill,),


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
    ),
        ),

    );
  }
}
