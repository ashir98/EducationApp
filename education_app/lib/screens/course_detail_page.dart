import 'package:education_app/screens/description_section.dart';
import 'package:education_app/screens/videos_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CourseDetail extends StatefulWidget {
  String courseName, image, courseVideos;
  CourseDetail({required this.courseName, required this.image, required this.courseVideos, super.key});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  bool isSwitched =true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseName),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple.shade50,
                  image: DecorationImage(
                    image: AssetImage(widget.image)
                  )
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.play_arrow_rounded, size: 50,color: Colors.deepPurple,)
                  ),
                )
              ),
            ),

            SizedBox(height: 10 ,),
            Text(widget.courseName+" Complete Course", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            SizedBox(height: 5,),
            Text("Created by Syed Ashir Ali", style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.7)),),
            Text(widget.courseVideos, style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 15),),


            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isSwitched = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: isSwitched? Colors.deepPurple: Colors.deepPurple.shade100
                        ),
                        child: Text("Videos",style: TextStyle(color: Colors.white,fontSize: 15),),
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isSwitched= false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: isSwitched? Colors.deepPurple.shade100: Colors.deepPurple
                        ),
                        child: Text("Description",style: TextStyle(color: Colors.white,fontSize: 15),),
                      ),
                    )
                  ],
                ),
              ),
            ),



            SingleChildScrollView(
              child: isSwitched?VideosSection(): DescriptionSection(),
            )







          ],
        ),
      ),
    );
  }
}