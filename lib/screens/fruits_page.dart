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
        
    ]
    
    )
     
    );
    
  }
}
