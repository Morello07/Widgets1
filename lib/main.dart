import 'package:flutter/material.dart';
import 'package:widget_1/Scaffold_widget.dart';
import 'package:widget_1/TugasAkhir.dart';
import 'package:widget_1/dialog.dart';
import 'package:widget_1/image_widget.dart';
import 'package:widget_1/picture.dart';
import 'package:widget_1/button.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:MyTugas(),
         );
     
  }
}
