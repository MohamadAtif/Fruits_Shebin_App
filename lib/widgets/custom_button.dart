import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child:  Container(
        height: 60,
        width: double.infinity,
        child:  Center(child: Text('Get Started',style: TextStyle(
          color:  Colors.white,
          fontSize: 24,fontWeight: FontWeight.bold
          ,fontFamily: 'Belanosima',
          ),)),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:const Color(0xfff14e2b),),
      ),
    );
  }
}