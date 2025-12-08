import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget implements PreferredSizeWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff24263B),
    centerTitle: true,
    title: const Text('BMI Calculator',
    style: TextStyle(fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Color(0xffffffff)))
      );
   
  }
  
  @override
 
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}