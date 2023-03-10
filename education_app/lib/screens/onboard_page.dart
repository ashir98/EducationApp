import 'package:education_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: height / 1.7,
                decoration: const BoxDecoration(color: Colors.white),
              ),
              Container(
                height: height / 1.7,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    )),
                child: Center(
                  child: Image.asset("images/books.png"),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: height / 2.425,
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 2.425,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    "Learning is Everything",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet leo non quam dictum iaculis."),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: height / 15,
                    width: width / 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        backgroundColor: Colors.deepPurple),
                      child: const Text("Get started",style: TextStyle(fontSize: 18, color: Colors.white),),
                      onPressed:() => Navigator.push(context, MaterialPageRoute(builder:(context) => const HomePage(),)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
