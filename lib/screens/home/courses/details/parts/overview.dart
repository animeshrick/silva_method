import 'package:flutter/material.dart';
import '../../../../../elements/text_elements.dart';

overviewView({required bool isActive}){
  return   ExpansionPanel(
    isExpanded: isActive,
    canTapOnHeader: true,
    headerBuilder: (context, isExpanded) {
      return Padding(
        padding: const EdgeInsets.only(top: 13.0,left: 10),
        child: Row(
          children: [
            Icon(isActive?Icons.bookmark:Icons.bookmark_border,color: isActive?Colors.amber:Colors.black,),
            customTextExtraBold(
                'Overview', Colors.black, 16),
          ],
        ),
      );
    },
    body: Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              customTextBold('Teacher: ', Colors.black, 16),
              customTextMedium('The Silva Method International', Colors.black, 16),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              customTextBold('Categories', Colors.black, 16),
              customTextMedium('Silva Home Study Programs', Colors.black, 16),
            ],
          ),

        ],
      ),
    ),
  );
}