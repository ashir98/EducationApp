import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryModel{

  List categories = [
    ["Category" , const Icon(Icons.category_rounded, size: 35,color: Colors.white,), Colors.amber],
    ["Classes" , const Icon(Icons.play_arrow_rounded,size: 35,color: Colors.white,), Colors.green],
    ["Free course" , const Icon(Icons.note_alt_rounded,size: 35,color: Colors.white), Colors.blue],
    ["BookStore" ,  const Icon(Icons.store_rounded,size: 35,color: Colors.white), Colors.deepOrange],
    ["Live Course" , const Icon(Icons.play_circle_filled_rounded,size: 35,color: Colors.white), Colors.pink],
    ["LeaderBoard" , const Icon(Icons.leaderboard_rounded,size: 35,color: Colors.white), Colors.green]
  ];
}