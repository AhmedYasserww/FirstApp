import 'package:flutter/material.dart';
import 'package:task11/componaned/navigator_bar.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     debugShowCheckedModeBanner: false,

      home:Test(),

    );
  }
}


