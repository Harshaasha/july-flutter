import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custmwidget extends StatelessWidget {
  final Image img;
  final Text title;
  final Text ? subtitle;
  final Icon ? iconss;
  VoidCallback onpress;
  Custmwidget({ required this.img, required this.title, this.subtitle,this.iconss,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Card(
        child: ListTile(
          leading: img,
          title: title,
          subtitle: subtitle,
          trailing:iconss ,
          onTap: onpress,
        ),
      ),
    );
  }
}

