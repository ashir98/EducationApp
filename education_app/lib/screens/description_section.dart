import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10,vertical: 20),
      child: Column(
        children: [
          Text(
            "Lorem ipsum dolor sit amet. Quo dolor consequatur in officiis reiciendis et tenetur quia ex reiciendis quasi At deleniti facilis aut distinctio accusamus et cupiditate quas. Non suscipit corporis et magni sint sit suscipit pariatur non optio nulla. Et architecto galisum non doloremque quam nam esse harum.",
            style: GoogleFonts.nunitoSans(fontSize: 17),
            textAlign: TextAlign.justify,
          
          ),
          SizedBox(height: 15,),

          Row(
            children: [
              Text(
                "Course length: ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.timer,color: Colors.deepPurple,),
                  Text(
                    " 26 Hours",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              )
            ],
          ),

          SizedBox(height: 5,),




          Row(
            children: [
              Text(
                "Rating: ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.star_rounded,color: Colors.amber,),
                  Text(
                    "4.5",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
