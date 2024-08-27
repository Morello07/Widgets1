import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputWidget extends StatefulWidget {
  
  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController nama = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column( 
        children: [
          SizedBox(height: 20,),
          TextField(
            controller: nama,
             obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'nama',
                  ),
                ),
                Text(nama.text),
      
                SizedBox(height: 20,),
                TextField(
             obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'kelas',
                  ),
                ),
      
                SizedBox(height: 20,),
                TextField(
             obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'absen',
                  ),
                ),
        ],
      ),
    ) ;
  }
}