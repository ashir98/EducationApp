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
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height / 2.66,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(70), )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 2.66,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue

              ),
            ),
          )
        ],
      ),
    );
  }
}
