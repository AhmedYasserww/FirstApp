import 'package:flutter/material.dart';

class Log_in extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Log_inState();
}

class Log_inState extends State<Log_in> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const Color(0xFF0f0f33),

        appBar: AppBar(
          backgroundColor: const Color(0xFF111646),
          title: const Text(
            "Log in",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(20),
                child: const Text("Welcome!",style: TextStyle(fontSize: 50,color: Colors.white),)),
           // Spacer(),
            const SizedBox(height: 50,),
            Container(
              width: double.infinity,height: 600,
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)),color:Color(0xFF7ec7da)),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 85,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15),
                    child: TextFormField(
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      //strutStyle:const StrutStyle(height: .5),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "UserName",
                        prefixIcon:const Icon(Icons.person, size: 35,),
                        enabled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:const BorderSide(width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:const BorderSide(width: 3),
                        ),
                      ),
                    ),
                  ),
                 const SizedBox(height: 45,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      obscureText: true,
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                     // strutStyle:const StrutStyle(height:),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Password",
                        prefixIcon:const Icon(Icons.password, size: 35,),
                        enabled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:const BorderSide(width:3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:const BorderSide(width: 3),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 70,),
                  Container(
                    margin:const EdgeInsets.symmetric(horizontal: 50),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF0f0f33),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

            ),

          ],),
        )
    );
  }}