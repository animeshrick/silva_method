import 'package:flutter/material.dart';
import 'package:silva/screens/home/events/view_all_events.dart';
import '../../../elements/text_elements.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customTextExtraBold('Events', Colors.black, 16),
            InkWell(
                onTap: ()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ViewAllEvents(),
                  ),
                ),
                child: customTextMedium('View All', Colors.black45, 16)),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          // color: Colors.red,
          height: 200,
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
                    width: 180,
                    height: 130,
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
        ),
      ],
    );
  }
}
