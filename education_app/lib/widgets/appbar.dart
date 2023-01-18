import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          
          colors: [
            Colors.deepPurple.shade400.withOpacity(0.95),
            Colors.deepPurple,
            

          ]
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30,),bottomRight: Radius.circular(30))
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Hello, \nGood Morning",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade200,
                      shape: BoxShape.circle
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.notifications, color: Colors.white,),
                    ),
                  )
                ],
              ),
      
      
              SizedBox(
                height: 55,
                child: TextField(
                  cursorColor: Colors.deepPurple,
                  decoration: InputDecoration(

                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.search_rounded, color: Colors.deepPurple,),
                    suffixIcon: Icon(Icons.mic, color: Colors.deepPurple,),
                    hintText: "Search here",
                    hintStyle: TextStyle(color: Colors.deepPurple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.deepPurple),
                      
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                    
                  ),
                ),
              ),
 
      
      
            ],
          ),
        ),
      ),
    );
  }
}