import 'package:flutter/material.dart';

Widget customTextField({
  required TextEditingController? controller,
  required String labelText,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(fontFamily: 'Montserrat-Medium'),
      border: OutlineInputBorder(),
    ),
  );
}
