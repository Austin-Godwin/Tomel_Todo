import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final int maxLines;
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const AppTextField(
      {Key? key,
      required this.maxLines,
      required this.hintText,
      required this.controller,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      child: TextFormField(
        validator: validator,
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey,
        ),
      ),
    );
  }
}
