import 'package:flutter/material.dart';
import 'package:silva/elements/custom_slider/image_slider.dart';
import 'package:silva/elements/delayed_display.dart';
import 'package:silva/elements/text_elements.dart';
import 'package:silva/screens/home/blog/blog.dart';
import 'package:silva/screens/home/courses/courses.dart';
import 'package:silva/screens/home/events/events.dart';

class Home extends StatelessWidget {
  List<String> images = [
    "https://silvamethod.com/store/wp-content/uploads/2022/01/manifesting-course.jpg",
    "https://silvamethod.com/store/wp-content/uploads/2022/01/manifesting-course.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: customTextBold('Home', Colors.black, 18),
          centerTitle: true,
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        endDrawer: Drawer(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: CustomImageSlider(
                    images: [
                      "https://silvamethod.com/store/wp-content/uploads/2022/01/manifesting-course.jpg",
                      "https://silvamethod.com/store/wp-content/uploads/2022/01/manifesting-course.jpg"
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                /// -------------- Courses ----------------
                DelayedDisplay(
                    delay: Duration(milliseconds: 1000), child: Courses()),

                /// -------------- Blogs ----------------
                DelayedDisplay(
                    delay: Duration(milliseconds: 1500), child: Blogs()),

                /// -------------- Events ----------------
                DelayedDisplay(
                    delay: Duration(milliseconds: 2000), child: Events()),
              ],
            ),
          ),
        ));
  }
}
