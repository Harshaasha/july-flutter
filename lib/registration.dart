import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registration extends StatefulWidget {


  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 30),
            child: Text("Registration",
            style: TextStyle(fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold),),),

         Padding(padding: const EdgeInsets.only(top: 50,right: 70,left: 70),
         child: TextFormField(
           decoration: InputDecoration(
             prefixIcon: Icon(Icons.person),
             hintText: "UserName",
             labelText: "UserName",
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30),
             )
           ),
           validator: (UserName){
             if(UserName!.isEmpty||!UserName.contains('@')||!UserName.contains('.'))
               {
                 return 'invalid UserName';
               }
             else{
               return null;
             }
           },
         ),)
            Padding(padding: const EdgeInsets.only(top: 50,right: 70,left: 70),
            child: TextFormField(
              obscureText: ,
            ),)
          ],
        ),
      ),
    );
  }
}
