import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Tableeg(),));
}
class Tableeg extends StatefulWidget {
  const Tableeg({super.key});

  @override
  State<Tableeg> createState() => _TableegState();
}

class _TableegState extends State<Tableeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: DataTable(
          border: TableBorder.all(width: 3,color: Colors.black),
          columns: [
          DataColumn(label: Text("Id",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
    DataColumn(label: Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
    DataColumn(label: Text("Job",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
    DataColumn(label: Text("Salery",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),

    ],
    rows: [
      DataRow(cells: [
        DataCell(Text("1")),
    DataCell(Text("Manu")),
    DataCell(Text("IT")),
    DataCell(Text("24000")),

    ]),
    DataRow(cells: [
    DataCell(Text("2")),
    DataCell(Text("Anu")),
    DataCell(Text("Sales")),
    DataCell(Text("20000")),

    ]),
    DataRow(cells: [
    DataCell(Text("3")),
    DataCell(Text("Ragu")),
    DataCell(Text("HR")),
    DataCell(Text("30000")),

    ]),
    DataRow(cells: [
    DataCell(Text("4")),
    DataCell(Text("Chandhu")),
    DataCell(Text("Doctor")),
    DataCell(Text("60000")),

    ])

    ],
      ),
      ), );
  }
}
