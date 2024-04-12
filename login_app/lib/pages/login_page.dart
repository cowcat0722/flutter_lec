import 'package:flutter/material.dart';

import '../components/custom_form.dart';
import '../components/logo.dart';
import '../size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: xlargeGap),
          Logo("Login"),
          CustomForm(),
        ],
      ),
    );
  }
}
