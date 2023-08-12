import 'package:flutter/material.dart';

import '../consts.dart';
import 'add_new_fruit.dart';
import 'fruits_page.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4e1e4),
      appBar: 
      AppBar(backgroundColor: const Color(0xfff14e2b) ,
  
      title: const Text('Fruits Shebin',style: TextStyle(fontFamily: 'Belanosima'),
      )),
          body: GridView.builder(
         gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
         itemBuilder: (context, index) =>const FruitCard(),),
         floatingActionButton:GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>const AddNewFruit(),)),
          
          child: const CircleAvatar(backgroundColor: kAppbarColor,radius: 35,child: Icon(Icons.add),))  ,
         
         
    );
    
  }
  }
