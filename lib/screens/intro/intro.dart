import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:silva/screens/intro/intro_view1.dart';
import 'package:silva/screens/intro/intro_view2.dart';
import 'package:silva/screens/intro/intro_view3.dart';

class IntroView extends StatefulWidget {
  @override
  _IntroViewState createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  late int selectedPage;
  late final PageController _pageController;
  List<Widget> pages = [IntroView1(),IntroView2(),IntroView3()];

  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: BouncingScrollPhysics(),
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                selectedPage = page;
              });
            },
            children: List.generate(pages.length, (index) {
              return pages[index];
            }),
          ),
          Positioned(
            bottom: 10,
            right: -30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: PageViewDotIndicator(
                currentItem: selectedPage,
                count: pages.length,
                unselectedColor: Colors.black26,
                selectedColor: Colors.blue,
                duration:const Duration(milliseconds: 200),
                boxShape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}