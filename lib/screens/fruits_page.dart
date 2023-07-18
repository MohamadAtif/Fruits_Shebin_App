import 'package:flutter/material.dart';
import 'package:fruit_shebin/consts.dart';
import 'package:fruit_shebin/screens/fruit_details.dart';

import '../widgets/fruit_card_detailsbody.dart';

class FruitCard extends StatelessWidget {
  const FruitCard({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FruitDetailsView();
            },));
          },
          child: const FruitCardDetails(),
        ),
        
      // Positioned(
      //   top: -35,
      //   bottom:60,
      //   left: 30,
      //   right: 30,
      //   child: Image.asset('images/peach.png'),
      //   // ,cacheHeight:70,
      //   // cacheWidth:90,
        
      //   ),
     
    ]
    )
      
    );
  }
}
