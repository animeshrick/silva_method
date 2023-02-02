import 'package:flutter/material.dart';
import 'package:silva/screens/home/courses/details/course_details.dart';
import '../../../elements/text_elements.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customTextExtraBold('Courses', Colors.black, 16),
            customTextMedium('View All', Colors.black45, 16),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CourseDetails(),
              ),
            );
          },
          child: SizedBox(
            // color: Colors.red,
            height: 170,
            child: ListView.separated(
              shrinkWrap: true,
              primary: false,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) => const SizedBox(
                width: 10,
              ),
              itemCount: 5,
              itemBuilder: (_, int i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 240,
                      height: 95,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://silvamethod.com/store/wp-content/uploads/2022/01/manifesting-course.jpg"
                              ),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium('Silva Life System', Colors.black, 16),
                        customTextMedium('\$99', Colors.black, 16),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Enroll Now",
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
    ;
  }
}
