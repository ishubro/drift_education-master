import 'package:flutter/material.dart';
import 'package:drift_education/screens/signIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText,this.onSaved,this.validator,this.obscureText});
  final Function validator;
  final String hintText;
  final Function onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        contentPadding: const EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(23),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(23),
        ),
      ),
      onSaved: onSaved,
      obscureText: obscureText,
    );
  }
}