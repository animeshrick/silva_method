import 'package:flutter/material.dart';
import '../../../elements/text_elements.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 130,
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
                ),
              ),
                customTextMedium('Silva Life System', Colors.black, 16),
            ],
          );
        },
      ),
    );
  }
}
