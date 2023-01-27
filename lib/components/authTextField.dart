import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hintTextValue;
  final bool obscurveText;
  final Icon iconName;
  final Color focusBorderColor;
  final Color borderColor;

  const AuthTextField({
    super.key,
    required this.hintTextValue,
    required this.obscurveText,
    required this.iconName,
    required this.focusBorderColor,
    required this.borderColor,
    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        obscureText: obscurveText,

        decoration: InputDecoration(
          suffixIcon: iconName,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: focusBorderColor),
          ),
          fillColor: const Color.fromARGB(255, 159, 159, 159),
          filled: true,
          hintText: hintTextValue,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 109, 109, 109),),
        ),

      ),
    );
  }
}