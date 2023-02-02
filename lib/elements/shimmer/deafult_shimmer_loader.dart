import 'package:flutter/material.dart';
import 'package:silva/elements/shimmer/shimmer_loader.dart';

class PageLoader extends StatelessWidget {
  const PageLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(0.2)),
                color: Colors.white),
          ),
          Container(
            color: Colors.grey.withOpacity(0.5),
            width: double.infinity,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            height: 250,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey.withOpacity(0.5),
            width: double.infinity,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            height: 20,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey.withOpacity(0.5),
            width: double.infinity,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            height: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey.withOpacity(0.5),
            width: double.infinity,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            height: 250,
          ),
        ],
      ),
    );
  }
}
