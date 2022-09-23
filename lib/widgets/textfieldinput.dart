import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {

  TextFieldInput({this.HintText, this.icon});

  String? HintText;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide.none
        ),
        filled: true,
        fillColor: Color(0xFFF3F3F3),
        prefixIcon: icon!,
        hintText: HintText.toString(),
      ),
    );
  }
}