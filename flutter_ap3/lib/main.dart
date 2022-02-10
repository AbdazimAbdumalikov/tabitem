import 'package:flutter/material.dart';
import 'package:flutter_ap3/scaffold_example.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter_ap3/bottom_navigation_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationBarExample()
    );
  }
}