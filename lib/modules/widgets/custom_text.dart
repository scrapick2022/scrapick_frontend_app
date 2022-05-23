import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight? fontWeight;
  final int? max;
  final TextDecoration? deco;

  // ignore: non_constant_identifier_names
  final Color? ColorText;
  const CustomText({
    Key? key,
    required this.text,
    this.size = 20,
    // ignore: non_constant_identifier_names
    this.ColorText,
    this.fontWeight,
    this.max,
    this.deco,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: deco,
        fontSize: size,
        color: ColorText,
        //  fontFamily: "Kufi",
        fontWeight: fontWeight,
      ),
      maxLines: max,
    );
  }
}
