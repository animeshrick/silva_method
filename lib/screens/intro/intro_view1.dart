import 'package:flutter/material.dart';
import 'package:silva/elements/routes/animated_route.dart';
import 'package:silva/elements/paper_texture_bg.dart';
import 'package:silva/elements/text_elements.dart';

import '../../elements/app_color.dart';
import 'intro_view2.dart';

class IntroView1 extends StatelessWidget {
  const IntroView1({Key? key}) : super(key: key);

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
                image: AssetImage("assets/intro1.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(
                      "https://silvamethod.com/assets/images/silvamethod-logo.png",
                      alignment: Alignment.center,
                    ),
                  ),
                  customTextMedium('Control Your', Colors.black, 24),
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
                      'Brain Waves',
                      style: TextStyle(
                          fontSize: 36.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0, right: 20),
                      child: CircleAvatar(
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              createRoute(
                                nextPage: const IntroView2(),
                              ),
                            );
                          },
                        ),
                      ),
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