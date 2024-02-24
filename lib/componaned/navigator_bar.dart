import 'package:flutter/material.dart';
import 'package:task11/screens/bmi_calculator.dart';

import '../screens/calculator.dart';
import '../screens/log_in.dart';

class Test extends StatefulWidget {
  const Test ({super.key});

  @override
  State<StatefulWidget> createState() => TestState();
}

class TestState extends State<Test> {

  List<Widget>widgetpages=[
    Calculate(),
    Calculator(),
    Log_in(),

  ];
  int selectedindex=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0f0f33),
      bottomNavigationBar:BottomNavigationBar(

        onTap: (index){

          setState(() {
            selectedindex=index ;
          });


          // print(selectedindex);
        },
        currentIndex: selectedindex,
        backgroundColor: Colors.indigo,
        selectedItemColor:  Colors.white,
    selectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: const TextStyle(fontSize: 20),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Color(0xFF7ec7da)),
        iconSize: 30,

        items: const [
          BottomNavigationBarItem(label: "BmiCalculate" ,icon: Icon(Icons.calculate_rounded,),),

          BottomNavigationBarItem(label: "Calulator" ,icon: Icon(Icons.calculate,),),
          BottomNavigationBarItem(label: "Log_in" ,icon: Icon(Icons.login,),)

        ],

      ) ,
      body: widgetpages.elementAt(selectedindex),
    );
  }
}

