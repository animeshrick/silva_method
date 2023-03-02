import 'package:flutter/material.dart';
import 'package:silva/elements/buttons.dart';
import 'package:silva/elements/image_view.dart';
import 'package:silva/elements/text_elements.dart';

class BuyCourses extends StatefulWidget {
  @override
  State<BuyCourses> createState() => _BuyCoursesState();
}

class _BuyCoursesState extends State<BuyCourses> {
   bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customTextMedium('Checkout', Colors.white, 16),
        actions: [
          Switch(value: isLogin, onChanged: (val){
            setState(() {
              isLogin = !isLogin;
            });
          }),
        ],
      ),
      bottomNavigationBar: customButton(
        buttonText: 'Pay Now',
        onPressed:isLogin==false? null:(){},
        btnColor:isLogin==false? Colors.grey: Colors.green,
        buttonTextSize: 14,
        width: double.infinity,
        height: 40,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isLogin == false)
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                       ListTile(
                        leading:const Icon(Icons.info_outline_rounded,color: Colors.red,),
                        title: customTextBold('You are not logged in',Colors.red,16),
                        subtitle: customTextMedium('Please Log In to enroll in the course',Colors.red,16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: customTextMedium('Login',Colors.red,16),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              const SizedBox(
                height: 5,
              ),
              customTextExtraBold('Your Order', Colors.black, 18),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        url:
                            'https://silvamethod.com/store/wp-content/uploads/2022/01/manifesting-course.jpg',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 10,),
                      customTextBold('Manifesting Course', Colors.black, 14),
                    ],
                  ),
                  customTextBold('\$99', Colors.black, 14),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextBold('Subtotal', Colors.black, 14),
                  customTextBold('\$99', Colors.black, 14),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextBold('Total', Colors.green, 14),
                  customTextBold('\$99', Colors.green, 14),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              customTextExtraBold(
                  'Additiona Information', Colors.black, 16),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                minLines: 10,
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: 'Note to administration',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45, ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
