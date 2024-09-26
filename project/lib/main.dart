import 'package:flutter/material.dart';
import 'package:project/pages/register.dart';


void main(){
   runApp(MyApp());
} 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        brightness: Brightness.dark
      ),
      home: Register(),
    );
  }
}