import 'package:flutter/material.dart';
import 'package:silva/elements/custom_slider/image_slider.dart';
import 'package:silva/elements/image_view.dart';
import 'package:silva/elements/text_elements.dart';

class ViewAllBlog extends StatelessWidget {
  const ViewAllBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customTextExtraBold('Blogs', Colors.black, 16),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          // gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
          //     // crossAxisCount: 2,
          //     maxCrossAxisExtent: 200,
          //     crossAxisSpacing: 4,
          //     mainAxisSpacing: 4,
          // ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            // crossAxisSpacing: 1,
            //   mainAxisSpacing: 10,
          ),
          itemCount: 10,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: CustomImageView(
                      height: 110,
                      width: double.infinity,
                      url:
                      'https://silvamethod.com/store/wp-content/uploads/2022/01/manifesting-course.jpg'),
                ),
                customTextMedium('Silva Life System', Colors.black, 16),
              ],
            );
          },
        ),
      ),
    );
  }
}
