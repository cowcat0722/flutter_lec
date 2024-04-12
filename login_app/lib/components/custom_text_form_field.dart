import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  final text;
  final TextEditingController controller;
  final obscureText;
  final validator;

  CustomTextFormField(
      {required this.controller,
      required this.text,
      this.obscureText = false,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: smallGap),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${text}"),
          TextFormField(
            obscureText: obscureText,
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
              hintText: "Enter ${text}",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
