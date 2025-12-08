// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HeightContainer extends StatefulWidget {
    double currentSliderValue;
    HeightContainer({super.key,required this.currentSliderValue});

  @override
  State<HeightContainer> createState() => _HeightContainerState();
}

class _HeightContainerState extends State<HeightContainer> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height:200, 
      decoration: BoxDecoration(
        color: Color(0xff333244),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Height",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Color(0xff8B8C9E),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                widget.currentSliderValue.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                "cm",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffffffff),
                ),
              ),
            ],
          ),
          Slider(
            value: widget.currentSliderValue,
            
            max: 220,
            onChanged: ( newValue) {
              // Handle slider value change
              setState(() {
                widget.currentSliderValue = newValue;
              });
            },
            activeColor: Color(0xffE83D67),
            inactiveColor: Color(0xffffffff),
          ),
        ],
      ),
    );
  }
}