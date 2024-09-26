import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: Lottieeg(),));
}
class Lottieeg extends StatefulWidget {
  const Lottieeg({super.key});

  @override
  State<Lottieeg> createState() => _LottieegState();
}

class _LottieegState extends State<Lottieeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: Lottie.asset("assets/Anim/Animation 1.json"),
      ),
    );
  }
}
