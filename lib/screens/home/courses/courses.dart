import 'package:flutter/material.dart';
import 'package:silva/elements/buttons.dart';
import '../../../elements/text_elements.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

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
        SizedBox(
          height: 230,
          child: ListView.separated(
              shrinkWrap: true,
              primary: false,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) => const SizedBox(
                    width: 10,
                  ),
              itemCount: 3,
              itemBuilder: (context, int i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 230,
                      height: 130,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://silvamethod.com/store/wp-content/uploads/2022/01/manifesting-course.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextBold(
                        'Silva Life System', Colors.black, 18),
                    const SizedBox(
                      height: 5,
                    ),

                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium('\$99', Colors.black, 14),
                        const SizedBox(
                          width: 85,
                        ),
                        customButton(
                          height: 40,
                          textColor: Colors.yellow,
                          buttonText: 'Enroll Now',
                          onPressed: () {},
                          buttonTextSize: 18,
                          btnColor: Colors.black,
                        ),
                      ],
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
