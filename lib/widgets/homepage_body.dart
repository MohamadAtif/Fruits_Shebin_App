import 'package:flutter/material.dart';

import '../screens/market_page.dart';
import 'custom_button.dart';


class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    const   Image(image:AssetImage('images/home.jpg')),
     CustomButton(onTap: () {
       Navigator.push(context,MaterialPageRoute(builder: (context) {
         return const MarketPage();
       },));
       },),
     
      ],
    );
  }
}