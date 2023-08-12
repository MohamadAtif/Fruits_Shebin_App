import 'package:flutter/material.dart';
import 'package:fruit_shebin/consts.dart';
class SquareImageLogin extends StatelessWidget {
  const SquareImageLogin({super.key, required this.imagePath});
  final String imagePath; 

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: 
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Image(image: AssetImage(imagePath),height: 65,),
                 ),
                  decoration: BoxDecoration(border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[400],
                  
                  )
                ,
                 );
  }
}