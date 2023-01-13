import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryModel{

  List categories = [
    ["Category" , Icon(Icons.category_rounded, size: 40,color: Colors.white,), Colors.yellow],
    ["Classes" , Icon(Icons.play_arrow_rounded,size: 40,color: Colors.white,), Colors.green],
    ["Free course" , Icon(Icons.note_alt_rounded,size: 40,color: Colors.white), Colors.blue],
    ["BookStore" ,  Icon(Icons.store_rounded,size: 40,color: Colors.white), Colors.deepOrange],
    ["Live Course" , Icon(Icons.play_circle_filled_rounded,size: 40,color: Colors.white), Colors.pink],
    ["LeaderBoard" , Icon(Icons.leaderboard_rounded,size: 40,color: Colors.white), Colors.green]
  ];
}