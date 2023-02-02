import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:silva/elements/app_color.dart';
import 'package:silva/elements/auth_bg.dart';
import 'package:silva/elements/buttons.dart';
import 'package:silva/elements/custom_textfield.dart';
import 'package:silva/elements/gradiant_text.dart';
import 'package:silva/elements/paper_texture_bg.dart';
import 'package:silva/elements/text_elements.dart';
import 'package:silva/screens/auth/sign_in.dart';

import '../home/home.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordCtrl = TextEditingController();
    TextEditingController _confPasswordCtrl = TextEditingController();
    bool _obscureText = true;

    return SafeArea(
      child: Scaffold(
        body: AuthBg(
          context,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customTextExtraBold('Sign Up', Color(0xffcc308b), 40),
                const SizedBox(
                  height: 15,
                ),
                customTextField(controller: _nameController, labelText: 'Name'),
                const SizedBox(
                  height: 15,
                ),
                customTextField(
                    controller: _emailController, labelText: 'Email'),
                const SizedBox(
                  height: 15,
                ),
                customTextField(
                    controller: _passwordCtrl, labelText: 'Password'),
                const SizedBox(
                  height: 15,
                ),
                customTextField(
                    controller: _confPasswordCtrl,
                    labelText: 'Confirm Password'),
                const SizedBox(
                  height: 15,
                ),
                CustomButtons().gradiantButtons(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Home(),
                        ),
                      );
                    },
                    text: 'Sign up'),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customTextMedium(
                        'Already have an account?', Colors.black, 16),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SignInView(),
                          ),
                        );
                      },
                      child: customTextMedium('Sign in', Colors.black, 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.network(
                    "https://silvamethod.com/assets/images/silvamethod-logo.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
