import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shebin/consts.dart';
import 'package:fruit_shebin/screens/Register_page.dart';
import 'package:fruit_shebin/screens/market_page.dart';
import 'package:fruit_shebin/widgets/custo_textfield.dart';
import 'package:fruit_shebin/widgets/custom_button.dart';
import 'package:fruit_shebin/widgets/custom_sqaregoogle.dart';

class loginPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body:  LoginPageBody(),
      );
   
  }
}

class LoginPageBody extends StatelessWidget {
   LoginPageBody({
    super.key,
  });
    
  String? emailAddress;
String ?password;
   GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: CustomScrollView(
          slivers: [
          SliverToBoxAdapter(
          child: Column(
          children: [
               const SizedBox(height:50),
           
              const Icon(Icons.person_3_sharp,size: 130),
                const SizedBox(height:50),
    
                Text(' Welocome back you\'ve been missed',style: TextStyle(fontSize: 18,fontFamily: 'GT Sectra',
                fontWeight: FontWeight.bold,color: Colors.grey[700]),),
               const SizedBox(height: 10,),
               CustomTextField( labelText: 'Email', obscureText: false, icon: Icons.email,onChanged: (data) {
                emailAddress=data;
                 
               },),
               CustomTextField( labelText: 'Password', obscureText: true,icon: Icons.lock,onChanged: (data) {
                password=data; 
               },),
               const SizedBox(height: 5,),
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15),
                     child: Text('Forget password?',style: TextStyle(fontSize: 18,fontFamily: 'GT Sectra',
                      color: Colors.grey[700]),),
                   ),
                 ],
               ),
                  const SizedBox(height: 10,),
               CustomButton(onTap: ()async{




                if (formKey.currentState!.validate()) {
                  try {
            await SignInUser();
           Navigator.push(context,MaterialPageRoute(builder: (context) {return   MarketPage(); },));

            } on FirebaseAuthException catch (e) {
             if (e.code == 'user-not-found') {
           print('No user found for that email.');
           } else if (e.code == 'wrong-password') {
            print('Wrong password provided for that user.');
                }
}         
                               }


           
    
               }, text: 'Login',),
               const SizedBox(height: 15,),
               const Row(
                  children:[
                        Expanded(
                          child: Divider(
                                           thickness: 1, 
                                         ),
                        ),
                 Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text('Or continue with',style: TextStyle(fontSize: 14,fontFamily: 'GT Sectra',
                      color: grey700),),
                 ),
                  Expanded(
                    child: Divider(
                     thickness: 1, 
                                   ),
                  ),
    
    
                  ],
                 ),
                 const SizedBox(height: 15,),
                const  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SquareImageLogin(imagePath: 'images/google.png'),
                   SizedBox(width: 20,),
                   SquareImageLogin(imagePath: 'images/apple.png'),
    
                ],
               ),
                    const SizedBox(height: 15,),
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
 Future<void> SignInUser() async {
     final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailAddress!,
      password: password!
    );
  }
 
}