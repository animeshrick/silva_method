import 'package:flutter/material.dart';
import '../../../elements/text_elements.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customTextExtraBold('Blogs', Colors.black, 16),
            customTextMedium('View All', Colors.black45, 16),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 180,
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
                    width: 150,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 150,
                    // height: 95,
                    child: customTextMedium(
                        'HOW TO PRACTICE MEDITATION CONSISTANTLY?',
                        Colors.black,
                        14),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
