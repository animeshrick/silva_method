import 'package:flutter/material.dart';

class CustomImageView extends StatelessWidget {
  final String url;
  double height;
  double width;
  BoxFit? fit;

  CustomImageView(
      {Key? key,
        required this.url,
        this.width = 0.0,
        this.height = 0.0,
        BoxFit? fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      placeholder: NetworkImage("https://cdn0.iconfinder.com/data/icons/digital-documents-3/66/page_document_loading_connecting-512.png"),
      image: NetworkImage(url),
      imageErrorBuilder: (context, error, stackTrace) {
        // dev.log("img error $error $stackTrace");
        return Image.network(
         "https://cdn0.iconfinder.com/data/icons/digital-documents-3/66/page_document_loading_connecting-512.png",
          width: width != 0.0 ? width : null,
          height: height != 0.0 ? height : null,
        );
      },
      fit: fit ?? BoxFit.contain,
      width: width != 0.0 ? width : null,
      height: height != 0.0 ? height : null,
    );
  }
}
