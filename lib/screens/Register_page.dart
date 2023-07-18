import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shebin/widgets/custo_textfield.dart';
import 'package:fruit_shebin/widgets/custom_button.dart';

import 'market_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  String? emailAddress;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('images/Registerimage.jpg'),
                    height: 320,
                  ),
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'GT Sectra',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomTextField(labelText: 'User Name', obscureText: false),
                  CustomTextField(
                    labelText: 'Email',
                    obscureText: false,
                    onChanged: (data) {
                      emailAddress = data;
                    },
                  ),
                  CustomTextField(
                    labelText: 'Password',
                    obscureText: true,
                    onChanged: (data) {
                      password = data;
                    },
                  ),
                  CustomTextField(
                      labelText: 'Phone Number', obscureText: false),
                  CustomButton(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          try {
                            await registerUser();
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              showSnackbar(context, 'Weak Password');
                            } else if (e.code == 'email-already-in-use') {
                              showSnackbar(context,
                                  'The account already exists for that email.');
                            }
                          } catch (e) {
                            showSnackbar(context, 'there was an error');
                          }

                          showSnackbar(context, 'Registration is Success');
                          Navigator.push(context, MaterialPageRoute(builder: (context) {  return MarketPage();},));
                        }
                      },
                      text: 'Register')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> registerUser() async {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress!,
      password: password!,
    );
  }
}
