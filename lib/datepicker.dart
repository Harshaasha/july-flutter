import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Datepickereg(),));
}
class Datepickereg extends StatefulWidget {
  const Datepickereg({super.key});

  @override
  State<Datepickereg> createState() => _DatepickeregState();
}

class _DatepickeregState extends State<Datepickereg> {
  DateTime selectdate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: TextField(
          controller: TextEditingController(text: "${selectdate.toLocal()}".split(" ")[0]),
          readOnly: true,
          decoration: InputDecoration(
            hintText: "Select date",
            suffixIcon: Icon(Icons.calendar_month),
          ),
          onTap: ()=>dateselect(context),
        ),
      ),
    );

  }
  Future<void>dateselect(BuildContext context) async{
    final DateTime ? picktime=await showDatePicker(
        context: context, firstDate: DateTime(2003), lastDate: DateTime(2025));
    if(picktime!=null && picktime!=selectdate);
    setState(() {
      selectdate=picktime!;
    });
  }
}
