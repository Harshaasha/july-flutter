import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listcustmlist(),));
}
class Listcustmlist extends StatelessWidget {
  var name=["amal","varun","dev","raj"];
  var phone=["9123456789","8765432123","6789543245","9876678998"];
  var image=["assets/images/img_1.png","assets/images/img_1.png","assets/images/img_1.png","assets/images/img_1.png"];
  var color=[Colors.lightGreen,Colors.yellow,Colors.orange,Colors.pink];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
        List.generate(name.length, (index){
          return Card(
            child: ListTile(
              
            ),
          )
    }
      )),
    );
//       body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
//         List.generate(name,length, (index) {
//           return Card(
//             child: ListTile(
//               leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
//               title: Text(name[index]),
//               subtitle: Text(phone[index]),
//             ),
//           );
//         })
//       )),
//     );
//   }
// }
