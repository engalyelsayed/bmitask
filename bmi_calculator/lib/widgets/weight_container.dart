import 'package:flutter/material.dart';

class WeightContainer extends StatelessWidget {
  String title;
  int value;
  final void Function()? increment;
  final void Function()? decrement;
   WeightContainer({super.key, required this.title,
    required this.value,  this.increment,  this.decrement});
   
 
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(height: 200,
      decoration: BoxDecoration(
        color: Color(0xff333244),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: Column(
        children: [SizedBox(height: 10,),
        Text(title,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Color(0xff8B8C9E),
        ),),
        SizedBox(height: 20,),
        Text(value.toString(),
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton.small(
              key: UniqueKey(),
              heroTag: "$title 1",
              onPressed: decrement,
              shape: CircleBorder(),
              backgroundColor: Color(0xff4C4F5E),
              child: Icon(Icons.remove,color: Colors.white,),
              
            ),
            SizedBox(width: 9,),
            FloatingActionButton.small(
              key: UniqueKey(),
              heroTag: "$title 2",
              onPressed: increment,
              backgroundColor: Color(0xff4C4F5E),
              shape: CircleBorder(),
              child: Icon(Icons.add,color: Colors.white,),
              
            ),
               
          ],
        ) 
      ],),
      
      ),
    );
   
    } 
  }

          