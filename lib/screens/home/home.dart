import 'package:flutter/material.dart';
import 'package:silva/elements/delayed_display.dart';
import 'package:silva/elements/text_elements.dart';
import 'package:silva/screens/home/blog/blog.dart';
import 'package:silva/screens/home/courses/courses.dart';
import 'package:silva/screens/home/events/events.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                children: [
                  DelayedDisplay(
                    delay: const Duration(milliseconds: 500),
                    child: Container(
                      width: double.infinity,
                      height: 170,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  /// -------------- Courses ----------------
                  const DelayedDisplay(
                      delay: Duration(milliseconds: 1000), child: Courses()),

                  /// -------------- Blogs ----------------
                  const DelayedDisplay(
                      delay: Duration(milliseconds: 1500), child: Blogs()),

                  /// -------------- Events ----------------
                  const DelayedDisplay(
                      delay: Duration(milliseconds: 2000), child: Events()),
                ],
              ),
            ),
          )),
    );
  }
}
