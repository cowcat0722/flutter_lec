import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';

import 'cumtom_validate.dart';

class CustomForm extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: email,
            text: "Email",
            validator: (value) {
              print("value : ${value}");

              if (value!.isEmpty) {
                return "비어있을수 없습니다";
              } else {
                return null; // 정상일때 null을 리턴한다.
              }
            },
          ),
          CustomTextFormField(
            controller: password,
            text: "Password",
            obscureText: true,
            validator: validatePassword(),
          ),
          TextButton(
            onPressed: () {
              //print("email : ${email.text}");
              if (formkey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
