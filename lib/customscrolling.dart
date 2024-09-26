import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Customscrolling(),));
}

class Customscrolling extends StatefulWidget {
  const Customscrolling({super.key});

  @override
  State<Customscrolling> createState() => _CustomscrollingState();
}

class _CustomscrollingState extends State<Customscrolling> {
  var name=["arun","ammu","varun","pinkii"];
  var phone=["9412349850","4312098976","5413286854","7645321289"];
  var image=["assets/images/img.png","assets/images/img.png","assets/images/img.png","assets/images/img.png"];
  var color=[Colors.yellow,Colors.blue,Colors.black,Colors.pink];


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Colors.yellow,
            title: Text("CustomScrollView"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),

            ],
            bottom: AppBar(
              title: Container(
                color: Colors.white,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search something.....",
                    prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),
            expandedHeight: 140,
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Card(
              color: color[index],
              child: ListTile(
                leading: Image(image: AssetImage(Image[index])),
                title: Text(name[index]),
                subtitle: Text(phone[index]),

              ),
            );

          },
          childCount: name.length))
        ],
      ),
    );
  }
}
