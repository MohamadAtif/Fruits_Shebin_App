import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
     CustomTextField({super.key, required this.labelText, required  this.obscureText,this.onChanged, required this.icon});
  String labelText;
  bool obscureText;
  IconData icon;
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
                  prefixIcon:  Icon(icon),
                      border: OutlineInputBorder(
                           borderSide:const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            
                            labelText: labelText,labelStyle: TextStyle(color: Colors.grey[500])),
                ),
           );
  }
}