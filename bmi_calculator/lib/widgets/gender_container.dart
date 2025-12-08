import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  
    final String gender;
  final IconData customicon;
  final bool isSelected;
  final  void Function ()? ontap;
 const GenderContainer({super.key,
  required this.gender,
   required this.customicon,
   this.ontap ,
   this.isSelected=false});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
                child: InkWell(onTap: ontap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 200,
                    decoration: BoxDecoration(
                      color:isSelected?Color(0xffE83D67): Color(0xff1D1E33),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Icon(customicon, size: 120,
                         color: Color(0xffffffff)),
                        Text(
                          gender,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8B8C9E),
                          ),
                        ),
                      ],
                      
                    ),
                  ),
                ),
              );
  

  }}
    
  


