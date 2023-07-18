import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
     CustomTextField({super.key, required this.labelText, required  this.obscureText,this.onChanged});
  String labelText;
  bool obscureText;
 Function(String) ?onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding:const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: onChanged,
                  obscureText:obscureText,
                validator: (data) {
                 if (data!.isEmpty) {
                   return 'field is required';
                 }   else{
                  
                 }
                  } ,
                decoration: InputDecoration(
                      border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                            labelText: labelText),
                ),
           );
  }
}