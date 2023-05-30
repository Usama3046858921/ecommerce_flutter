import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textFormFieldWidgets(String hintText, bool obscureText) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    child: TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.grey[100],
        filled: true,
        hintText: hintText,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
      ),
    ),
  );
}