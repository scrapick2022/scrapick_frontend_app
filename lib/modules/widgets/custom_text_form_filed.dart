import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFormFeild extends StatelessWidget {
  final String hint;
  final TextInputType type;
  // ignore: prefer_typing_uninitialized_variables
  final onsave;
  // ignore: prefer_typing_uninitialized_variables
  final validate;
  final IconData? suffix;
  // ignore: prefer_const_constructors_in_immutables
  CustomFormFeild(
      {Key? key,
      required this.hint,
      required this.type,
      required this.onsave,
      required this.validate,
      this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsave,
      validator: validate,
      decoration: InputDecoration(hintText: hint, suffixIcon: Icon(suffix)),
    );
  }
}












