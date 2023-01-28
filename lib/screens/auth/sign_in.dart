import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:silva/elements/auth_bg.dart';
import 'package:silva/elements/text_elements.dart';
import 'package:silva/screens/auth/sign_up.dart';
import 'package:silva/screens/home/home.dart';

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
                SizedBox(
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xffe12178), Color(0xffbd2d92)],
                        ),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.57),
                              //shadow for button
                              blurRadius: 5) //blur radius of shadow
                        ]),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>const Home(),
                          ),
                        );
                      },
                      child: Padding(
                        padding:const EdgeInsets.only(
                          top: 18,
                          bottom: 18,
                        ),
                        child: customTextMedium("Login", Colors.white, 16),
                      ),
                    ),
                  ),
                ),
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
      ),
    );
  }
}
