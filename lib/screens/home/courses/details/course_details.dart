import 'package:flutter/material.dart';
import 'package:silva/elements/buttons.dart';
import 'package:silva/elements/delayed_display.dart';
import 'package:silva/elements/text_elements.dart';
import 'package:silva/screens/home/courses/buy_courses.dart';
import 'package:silva/screens/home/courses/details/parts/curriculum.dart';
import 'package:silva/screens/home/courses/details/parts/instructor.dart';
import 'package:silva/screens/home/courses/details/parts/overview.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  bool overView = true;
  bool curriculum = false;
  bool instructor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: CustomButtons().buyButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => BuyCourses()));
          },
          text: "Buy Now"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Image.network(
                "https://silvamethod.com/store/wp-content/uploads/2022/01/manifesting-course.jpg",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Row(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedDisplay(
                    delay: const Duration(milliseconds: 700),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextBold('Manifesting Course', Colors.black, 18),
                        customTextMedium('\$25.00', Colors.black, 16),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DelayedDisplay(
                    delay: const Duration(milliseconds: 900),
                    child: ExpansionPanelList(
                      // elevation: 10.0,
                      expansionCallback: (panelIndex, isExpanded) {
                        if (panelIndex == 0) {
                          setState(() {
                            overView = !overView;
                          });
                        } else if (panelIndex == 1) {
                          setState(() {
                            curriculum = !curriculum;
                          });
                        } else {
                          setState(() {
                            instructor = !instructor;
                          });
                        }
                      },
                      children: [
                        overviewView(isActive: overView),
                        curriculumView(isActive: curriculum),
                        instructorView(isActive: instructor),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
