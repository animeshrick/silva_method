import 'package:flutter/material.dart';
import 'package:silva/elements/image_view.dart';
import 'package:silva/elements/text_elements.dart';

import '../../../elements/delayed_display.dart';

class BlogDetails extends StatelessWidget {
  const BlogDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.black45,
        title: customTextExtraBold('Blog Details', Colors.black, 18),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            customTextExtraBold(
                'Silva Life System: The Core of Silva Method Program',
                Colors.black,
                20),
            const SizedBox(
              height: 10,
            ),
            customTextMedium(
                'Everyone wishes to lead a conscious life. '
                'But, how? Imagine getting to participate in life-changing events that help overcome obstacles. '
                'Now, you may think, why a conscious life is crucial? “Conscious Living” is a buzzword word. '
                'Let’s break it down and understand from the basics. Leading a conscious life helps us in becoming more '
                'aware of ourselves. It teaches us to listen to what our mind and body need. Thus, we make more '
                'informed and considered decisions in our daily life based on these factors. '
                'This way, we feel much more fulfilled and have a greater sense of'
                ' happiness in our day-to-day lives.',
                Colors.black,
                16),
          ],
        ),
      ),
    );
  }
}
