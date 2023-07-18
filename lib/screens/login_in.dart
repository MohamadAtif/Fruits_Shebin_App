import 'package:flutter/material.dart';
import 'package:fruit_shebin/consts.dart';
import 'package:fruit_shebin/screens/Register_page.dart';
import 'package:fruit_shebin/screens/market_page.dart';
import 'package:fruit_shebin/widgets/custo_textfield.dart';
import 'package:fruit_shebin/widgets/custom_button.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(

          slivers: [
          SliverToBoxAdapter(
          child: Column(
          children: [
           
              const Image(image: AssetImage('images/loginimage.jpg'),height: 400,),
               const Text('Login',style: TextStyle(fontSize: 30,fontFamily: 'GT Sectra',fontWeight: FontWeight.bold,),),
               const SizedBox(height: 10,),
               CustomTextField( labelText: 'Email', obscureText: true),
               CustomTextField( labelText: 'Password', obscureText: true),
               const SizedBox(height: 10,),
               CustomButton(onTap: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) {
              return const MarketPage();
               },));

               }, text: 'Login',),
               const SizedBox(height: 5,),
               Row(
                children:  [
                  const SizedBox(width: 120,),
                  const Text("new member ?",style:TextStyle(fontWeight: FontWeight.w500) ,),
                    TextButton(onPressed: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context) {
                     return  RegisterPage();
                     },));
                    }, child: const Text("Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
                ],
               )
             

             
             ],
             )
          )
        ],
        
        ),
      );
   
  }
}