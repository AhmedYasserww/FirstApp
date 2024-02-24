import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task11/screens/result_Calculate.dart';
class Calculate extends StatefulWidget {

  const Calculate();
  @override
  State<StatefulWidget> createState() => CalculateState();
}
class CalculateState extends State<Calculate> {

  Color buttonColor = Colors.indigo;
  Color buttonColor2 = Colors.indigo;

  double height = 0;
 double weight =0;
 double age =0;
 double bmi = 0.0;



 @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor :  const Color(0xFF272B49FF),
        appBar: AppBar(
  backgroundColor:const Color(0xFF111328),
          title:const  Text("BMI Calculator",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.white),),
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(onTap: (){
                      setState(() {
                        buttonColor = buttonColor == Colors.indigo ? Colors.blueAccent: Colors.indigo;                      });
                  },
                    child: Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: buttonColor),

                      height: 170,
                      width: 170,
                      margin: const EdgeInsets.only(top: 20 , left: 20),
                      child:
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                      Icon(Icons.male,size: 80,color: Colors.white,),
                      Text("Male",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white))

                    ],),),
                  ),
                ),
                const SizedBox(width: 20,),

                Expanded(
                  child: InkWell(onTap: (){
                    setState(() {
                      buttonColor2 = buttonColor2 == Colors.indigo ? Colors.blueAccent: Colors.indigo;
                    });
                  },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:buttonColor2 ,),
                      height: 170,
                      width: 170,

                      margin: const EdgeInsets.only(top: 20 , right: 20),
                      child:
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Icon(Icons.female,size: 80,color: Colors.white,),
                          Text("Female",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white))

                        ],),),
                  ),
                ),

              ],

            ),
    const SizedBox(height: 15,),
    Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.indigo,),
    height: 170,
    width: double.infinity,

    margin: const EdgeInsets.only(left: 20 , right: 20),
    child:
    Column(
     // mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Expanded(
            flex :1,
            child: const Text(
              "HEiGHT",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal, color: Colors.white),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
            
            
              children: [
                Text(
                  "${height.toInt()}", // Displaying the counter value
                  style: const TextStyle(fontSize: 65,color: Colors.white,fontWeight: FontWeight.bold),
                ),
               const Text(
                  "cm", // Text "cm" with a different font size
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal, color: Colors.black38),
                ),
              ],
            ),
          ),
       Expanded(
         flex: 2,
         child: Slider(
             activeColor: Colors.white,
             inactiveColor: Colors.black38,
             min: 0,max: 250,
               value:height.toDouble(), onChanged:(val){
             setState(() {
               height = val;
             });
         }
         
         ),
       )
      ],
    ),
    ),
             const SizedBox(height: 15,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.indigo,
                      ),
                      height: 170,
                      width: 170,
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Expanded(
                          flex: 2,
                          child: const  Text(
                              "WEIGHT",
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal, color: Colors.white),
                            ),
                        ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "${weight.toInt()}",
                              style: const TextStyle(fontSize: 65, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight ++;
                                      });
                                    },
                                    icon:const Icon(Icons.add_circle, size: 55,color: Colors.grey,),
                                  ),
                                ),
                                 // Use Spacer to distribute space evenly
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight --;
                                      });
                                    },
                                    icon:const Icon(Icons.remove_circle, size: 55,color: Colors.grey,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  const SizedBox(width: 20,),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.indigo,
                      ),
                      height: 170,
                      width: 170,
                      margin: const EdgeInsets.only(right: 20),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Expanded(
                              flex:2,
                              child: const  Text(
                                "AGE",
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal, color: Colors.white),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "${age.toInt()}",
                                style: const TextStyle(fontSize: 65, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {
                                       setState(() {
                                         age ++;
                                       });
                                      },
                                      icon:const Icon(Icons.add_circle, size: 55,color: Colors.grey,),
                                    ),
                                  ),
                                  // Use Spacer to distribute space evenly
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          age --;
                                        });
                                      },
                                      icon:const Icon(Icons.remove_circle, size: 55,color: Colors.grey,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],

              ),


             const SizedBox(height: 20,),
              Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.indigo,
                  ),
                  child: MaterialButton(
                    onPressed: () async {
                      setState(() {
                        bmi = weight / ((height * height) / 10000);


                      });

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Result(bmi: bmi),
                        ),
                      );
                    },

                    child: const Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  )
              ),


            ],),
        )


         );
  }
}