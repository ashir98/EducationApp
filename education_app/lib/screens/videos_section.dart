import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VideosSection extends StatelessWidget {
  const VideosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {

        return ListTile(
          leading: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              shape: BoxShape.circle
            ),
            child: Icon(Icons.play_arrow_rounded, color: Colors.white,size: 30,),
          ),

          title: Text("Course video "+index.toString()),
          subtitle: Text("video duration"+ index.toString()),
        );
        
      },
    );
  }
}
