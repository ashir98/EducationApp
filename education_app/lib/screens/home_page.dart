import 'package:education_app/model/category_model.dart';
import 'package:education_app/model/course_model.dart';
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
      appBar: AppBar(
        
        toolbarHeight: 120,
        backgroundColor: Colors.deepPurple,
        title: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Hi , programmer", style: TextStyle(color: Colors.white),)),
            SizedBox(height: 10,),  
            Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                
                decoration: InputDecoration(
                  hintText: "Search here",
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          
          
              //// category gridview
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 10),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: categoryModel.categories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: categoryModel.categories[index][2]
                          ),
                          child: categoryModel.categories[index][1],
                        ),
                        SizedBox(height: 10,),
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
                    Text("Courses",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                    Text("See all", style: TextStyle(fontSize: 18),)
                  ],
                ),
              ),
          
          
              ///courses tile
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1),
                itemCount: courseModel.courses.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(courseModel.courses[index][1],scale: 0.5,width: 80,height: 80,),
                          Text(courseModel.courses[index][0], style: TextStyle(fontSize: 20),)
          
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}