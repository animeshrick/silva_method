import 'package:flutter/material.dart';
import 'package:silva/elements/auth_bg.dart';
import 'package:silva/elements/text_elements.dart';
import 'package:silva/screens/auth/sign_up.dart';
import 'package:silva/screens/home/home.dart';

import '../../elements/buttons.dart';
import '../../elements/custom_textfield.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _passwordCtrl = TextEditingController();

    return Scaffold(
      body: AuthBg(
        context,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customTextExtraBold(
                "Login",
                Color(0xffcc308b),
                40,
              ),
              const SizedBox(
                height: 15,
              ),
              customTextField(
                  controller: _nameController, labelText: 'Username'),
              const SizedBox(
                height: 15,
              ),
              customTextField(
                  controller: _passwordCtrl, labelText: 'Password'),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  child:
                      customTextMedium("Forgot Password", Colors.black, 16),
                ),
              ),
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
                  text: 'Login'),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customTextMedium(
                      'Don`t have an account?', Colors.black, 16),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SignupView(),
                        ),
                      );
                    },
                    child: customTextMedium('Sign Up', Colors.black, 16),
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
    );
  }
}
