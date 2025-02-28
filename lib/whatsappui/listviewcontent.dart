import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class listcontent extends StatefulWidget {
  const listcontent({super.key});

  @override
  State<listcontent> createState() => _listcontentState();
}

class _listcontentState extends State<listcontent> {
  var chatname = ["Ammu", "Zera", "Anu", "Minnu", "Amal", "tharun","Varun"];
  var profile = [
    "assets/images/frozen.jpeg",
    "assets/images/frozen.jpeg",
    "assets/images/frozen.jpeg",
    "assets/images/frozen.jpeg",
    "assets/images/frozen.jpeg",
    "assets/images/frozen.jpeg",
    "assets/images/frozen.jpeg"
  ];
  var time = [
    "10.30 AM",
    "4.54 PM",
    "6.43 AM",
    "7.34 AM",
    "4.32 AM",
    "6.33 AM",
    "6.33 AM"

  ];
  var message = [
    "hi Good morning, How are you?”",
    "hiii",
    "hello",
    "hyy",
    "whats up mahn??",
    "whats up mahn??",
    "hyy"

  ];

  var messagecount = [
    "2",
    "4",
    "3",
    "2",
    "1",
    "1",
    "4"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Padding(
        padding: const EdgeInsets.only(bottom: 10,top: 10),
        child: Container(child:
        TextFormField(decoration: InputDecoration(
            prefixIcon: Icon(Icons.circle_outlined),
            hintText: "Ask meta AI or Search",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),style: TextStyle(color: Colors.blueGrey),),
        ),),),
      body: Scrollbar(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  child:
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(profile[index]),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chatname[index],
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(message[index]),
                        ],
                      ),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        //bottom: 4,
                      ),
                      child: Column(
                        children: [
                          Text(time[index]),
                          Container(
                            child: Center(
                                child: Text(
                                  messagecount[index],
                                )),
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.green[400], // Background color
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: chatname.length)

      ),
    );
  }
}