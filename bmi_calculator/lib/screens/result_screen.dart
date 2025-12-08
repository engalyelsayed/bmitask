import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
final double bmiResult;
  const ResultScreen({super.key, required this.bmiResult,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:25.0),
        child: Column(
          children: [
            SizedBox(height: 22.0,),
            Text('Your Result',textAlign:TextAlign.start,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),),
            SizedBox(height: 22.0,),
            Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [SizedBox(height: 60.0,),
                  Text(bmistatus(bmiResult),
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff24D876),
                  ),),
                  SizedBox(height: 35.0,),
                  Text(bmiResult.toStringAsFixed(1),
                  style: TextStyle(
                    fontSize: 70,  
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    
                  ),),
                  SizedBox(height: 60.0,),
                  Text(bmirecommend(bmiResult),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(title: "Re-Calculate",ontap: (){
        Navigator.pop(context);
      },  ),
      
    );
  }
 String bmistatus(double bmiResult){
    if(bmiResult<18.5){
      return 'Underweight';
    }else if(bmiResult>=18.5 && bmiResult<24.9){
      return 'Normal weight';
    }else if(bmiResult>=25 && bmiResult<29.9){
      return 'Overweight';
    }else{
      return 'Obesity';
    }
  }
  String bmirecommend(double bmiResult){
    if(bmiResult<18.5){
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }else if(bmiResult>=18.5 && bmiResult<24.9){
      return 'You have a normal body weight. Good job!';
    }else if(bmiResult>=25 && bmiResult<29.9){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else{
      return 'You have a much higher than normal body weight. Consult a doctor.';
    }
  }
}