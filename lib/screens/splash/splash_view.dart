import 'package:flutter/material.dart';
import 'package:silva/elements/app_color.dart';
import 'package:silva/elements/paper_texture_bg.dart';
import 'package:silva/elements/text_elements.dart';
import 'package:silva/screens/intro/intro.dart';

import '../intro/intro_view1.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) =>  IntroView(),
          // builder: (_) => const IntroView1(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PaperTextureBg(
        context,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/splash_image.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              customTextMedium('Welcome to', Colors.black, 24),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [
                      AppColor().appBaseColor1,
                      AppColor().appBaseColor2
                    ],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds);
                },
                child: const Text(
                  'Silva Method',
                  style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset('assets/flower_image.png',
                  height: 300, width: 300, fit: BoxFit.cover),
              Image.network(
                  "https://silvamethod.com/assets/images/silvamethod-logo.png"),
            ],
          ),
        ),
      ),
    );
  }
}
