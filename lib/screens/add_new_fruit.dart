import 'package:flutter/material.dart';
import 'package:fruit_shebin/widgets/custo_textfield.dart';
import 'package:fruit_shebin/widgets/custom_button.dart';

class AddNewFruit extends StatelessWidget {
  const AddNewFruit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SafeArea(child: Column(
        children: [
          
          CustomTextField(labelText: 'title', obscureText: false, icon: Icons.text_fields),
          CustomTextField(labelText: 'Fruitimage', obscureText: false, icon: Icons.add_a_photo),
          CustomTextField(labelText: 'price', obscureText: false, icon: Icons.add),
          CustomButton(onTap: (){}, text: 'Add Fruit to Market')


      ],),
    ));
    
  }
}