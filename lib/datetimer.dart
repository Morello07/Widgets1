import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widget_1/main.dart';


class DatetimerWidget extends StatefulWidget {
  const DatetimerWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
_DatetimerWidgetState createState() => _DatetimerWidgetState();
}

class _DatetimerWidgetState extends State<DatetimerWidget> {
  // Variable/State Untuk Mengambil Tanggal
  DateTime selectedDate = DateTime.now();

// Initial Selected Date
  Future<Null> _selectDate(BuildContext context) async{
    // Initial DateTimw FIinal Picked
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate : selectedDate,
      firstDate : DateTime(2015, 8),
      lastDate : DateTime(2101));

    if (picked != null && picked != selectedDate)
    setState(() {
      selectedDate = picked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget> [
          Text("${selectedDate.toLocal()}".split(' ')[0]),
          SizedBox(height: 20.0,),
          ElevatedButton(
            onPressed: () => {
              _selectDate(context),
              print(selectedDate.day + selectedDate.month + selectedDate.year)
              },
              child: Text('Pilih Tanggal'),
              ),
            ],
          ),
        );
  }  
}