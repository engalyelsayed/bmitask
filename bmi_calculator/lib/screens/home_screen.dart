// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/custom_nav_bar.dart';
import 'package:bmi_calculator/widgets/gender_container.dart';
import 'package:bmi_calculator/widgets/height_container.dart';
import 'package:bmi_calculator/widgets/weight_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final double   currentSliderValue = 150;
  int weight = 60;
  bool isMale = true;
  int age = 35;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            //gender row
            Row(
              children: [
                GenderContainer(
                  gender: "male",
                  customicon: Icons.male,
                  isSelected: isMale,
                  ontap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                ),

                SizedBox(width: 10),
                GenderContainer(
                  gender: "female",
                  customicon: Icons.female,
                  isSelected: !isMale,
                  ontap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 25.0),
            //height container
            HeightContainer(currentSliderValue: 150),
            SizedBox(height: 25.0),
            //weight and age row
            Row(
              children: [
                WeightContainer(
                  title: 'weight',
                  value: weight,

                  increment: () {
                    setState(() {
                      weight++;
                    });
                  },
                  decrement: () {
                    if (weight > 1) {
                      setState(() {
                        weight--;
                      });
                    }
                  },
                ),
                SizedBox(width: 10.0),
                WeightContainer(
                  title: 'age',
                  value: age,
                  increment: () {
                    setState(() {
                      age++;
                    });
                  },
                  decrement: () {
                    if (age > 1) {
                      setState(() {
                        age--;
                      });
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(
        title: "Calculate",
        ontap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ResultScreen(
              bmiResult: weight / pow((currentSliderValue / 100),2))
          ));
        },
      ),
    );
  }
}
