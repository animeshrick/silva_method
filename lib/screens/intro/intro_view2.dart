import 'package:flutter/material.dart';
import 'package:silva/elements/paper_texture_bg.dart';
import 'package:silva/elements/text_elements.dart';

import '../../elements/app_color.dart';
import '../../elements/routes/animated_route.dart';
import 'intro_view3.dart';

class IntroView2 extends StatefulWidget {
  const IntroView2({Key? key}) : super(key: key);

  @override
  State<IntroView2> createState() => _IntroView2State();
}

class _IntroView2State extends State<IntroView2> {

  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(milliseconds: 1500),(){
  //     // Navigator.of(context).pushReplacement(
  //     //   createRoute(
  //     //     nextPage: const IntroView3(),
  //     //   ),
  //     // );
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> IntroView3()));
  //
  //   });
  // }

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
              image: AssetImage("assets/intro2.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 250,
                ),
                Image.network(
                  "https://silvamethod.com/assets/images/silvamethod-logo.png",
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: 25,
                ),
                customTextMedium('Be Better &', Colors.black, 24),
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
                    'Better Everyday',
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: Padding(
                //     padding: const EdgeInsets.only(bottom: 20.0, right: 20),
                //     child: CircleAvatar(
                //       child: IconButton(
                //         icon: const Icon(Icons.arrow_forward_ios),
                //         onPressed: () {
                //           Navigator.pushReplacement(
                //             context,
                //             MaterialPageRoute(
                //               builder: (_) => const IntroView3(),
                //             ),
                //           );
                //         },
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
