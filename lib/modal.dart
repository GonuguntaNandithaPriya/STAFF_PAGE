import 'package:flutter/material.dart';

class CardItem{
  final Color color;
  final String title;
  final String subtitle;
  const CardItem({required this.color,required this.title,required this.subtitle});
}
 List<CardItem> items = [
    const CardItem(
     color:Colors.orange,
      title: 'Ai Lev-1 batch5',
      subtitle: "Feb 25th 2022 at 12 pm",
    ),
    const CardItem(
      color:Colors.black,
      title: 'Ai Lev-1 batch4',
      subtitle: "Feb 25th 2022 at 2 pm",
    ),
    const CardItem(
     color:Colors.blue,
      title: 'Ai Lev-1 batch3',
      subtitle: "Feb 28th 2022 at 2 pm",
    ),

 
    
  ];