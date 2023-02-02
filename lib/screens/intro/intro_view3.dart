import 'package:flutter/material.dart';
import 'package:silva/elements/routes/animated_route.dart';
import 'package:silva/elements/paper_texture_bg.dart';
import 'package:silva/elements/text_elements.dart';
import 'package:silva/screens/auth/sign_up.dart';

import '../../elements/app_color.dart';

class IntroView3 extends StatelessWidget {
  const IntroView3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://silvamethod.com/assets/images/silvamethod-logo.png",
                    alignment: Alignment.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  customTextMedium('Start Learning', Colors.black, 24),
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
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, createRoute(nextPage: const SignupView()));
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.all(10),
                          width: 110,
                          child:
                              customTextMedium('Start Now', Colors.black, 14),
                        ),
                        Positioned(
                          left: 85,
                          top: -10,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppColor().appBaseColor1,
                                  AppColor().appBaseColor2
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
