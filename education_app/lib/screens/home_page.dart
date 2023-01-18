import 'package:education_app/model/category_model.dart';
import 'package:education_app/model/course_model.dart';
import 'package:education_app/screens/course_detail_page.dart';
import 'package:education_app/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CourseModel courseModel = CourseModel();
    CategoryModel categoryModel = CategoryModel();
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 220),
        child: MyAppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              Padding(
                padding: EdgeInsets.only(top: 15,left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Categories",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              //// category gridview
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: categoryModel.categories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: categoryModel.categories[index][2]
                          ),
                          child: categoryModel.categories[index][1],
                        ),
                        const SizedBox(height: 10,),
                        Text(categoryModel.categories[index][0])
                      ],
                    );
                  },
                ),
              ),
          
              ///courses/see all text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Courses",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                    const Text("See all", style: TextStyle(fontSize: 18, color: Colors.deepPurple),)
                  ],
                ),
              ),
          
          
              ///courses tile
              Padding(
                padding: const EdgeInsets.all(5),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.9),
                  itemCount: courseModel.courses.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => CourseDetail(
                        courseName: courseModel.courses[index][0],
                        image: courseModel.courses[index][1],
                        courseVideos: courseModel.courses[index][2],
                      ),)),
                      child: Card(
                        color: Colors.purple.withOpacity(0.05),
                        shadowColor: Colors.transparent,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: [
                              Image.asset(courseModel.courses[index][1],scale: 0.5,width: 80,height: 80,),
                              const SizedBox(height: 10,),
                              Text(courseModel.courses[index][0], style: const TextStyle(fontSize: 20),),
                              Text(courseModel.courses[index][2], style: const TextStyle(color: Colors.grey),)
                              
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}