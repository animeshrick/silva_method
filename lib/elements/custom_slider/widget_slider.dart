import 'package:flutter/material.dart';

import 'image_animation.dart';

class CustomWidgetSlider extends StatefulWidget {
  final List<String> images;

  const CustomWidgetSlider({Key? key, required this.images}) : super(key: key);

  @override
  State<CustomWidgetSlider> createState() => _CustomWidgetSliderState();
}

class _CustomWidgetSliderState extends State<CustomWidgetSlider> {
  late PageController _pageController;

  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1, initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 260,
          child: PageView.builder(
            itemCount: widget.images.length,
            physics: const BouncingScrollPhysics(),
            pageSnapping: true,
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (context, pagePosition) {
              bool active = pagePosition == activePage;
              return imageAnimation(
                  _pageController, widget.images[pagePosition], active);
            },
          ),
        ),
        if (widget.images.length > 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              widget.images.length,
                  (index) {
                return Container(
                  margin: const EdgeInsets.all(3),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color:
                      activePage == index ? Colors.black : Colors.black26,
                      shape: BoxShape.circle),
                );
              },
            ),
            // children: indicators(widget.images.length, activePage),
          )
      ],
    );
  }
}
