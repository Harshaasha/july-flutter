import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridcustmwidget extends StatelessWidget {
 // const Gridcustmwidget({super.key});
  final Image img;
  final Text text;
  final Color clr;
  Gridcustmwidget({required this.img, required this.text, required this.clr});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Container(
        child: Card(color: clr,
          child: Column(
            children: [
              Container(child: text ,),
              Container(child: img,)

            ],
          ),
        ),
      ),
    );
  }
}
