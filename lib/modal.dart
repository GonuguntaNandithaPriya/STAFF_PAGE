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
 const CardItem(
     color:Colors.orange,
      title: 'Ai Lev-1 batch5',
      subtitle: "Feb 28th 2022 at 12 pm",
    ),
 
    
  ];



  class CardItem1{
  
  final String title;
  final String subtitle;
  const CardItem1({required this.title,required this.subtitle});
}
List<CardItem1> items1 = [
    const CardItem1(
      title: 'AI LEVEL 1 Batch 5',
      subtitle: 'Session-3',
    ),
    const CardItem1(
      title: 'AI LEVEL 1 Batch 4',
      subtitle: 'Session-10',
    ),
    const CardItem1(
      title: 'AI LEVEL Batch 3',
      subtitle: 'Session-12',
    ),
    const CardItem1(
      title: '1',
      subtitle: 'Today@1:30 PM',
    ),
    const CardItem1(
      title: '2',
      subtitle: 'Today@2:30 PM',
    ),
    const CardItem1(
      title: '3',
      subtitle: 'Today@1:30 PM',
    ),
    const CardItem1(
      title: '4',
      subtitle: 'Today@1:30 PM',
    ),
  ];