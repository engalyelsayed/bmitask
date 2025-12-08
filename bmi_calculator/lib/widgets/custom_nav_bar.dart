import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final String title;
  final void Function()? ontap;
  const CustomNavBar({super.key, required this.title, this.ontap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap: ontap,
      child: Container(
            color: Color(0xffE83D67),
            height:100,
            child: Center(
              child: Text(title,
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),),
            ),
          ),
    );
  }
}
  
