import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  CustomText({
    required this.text,
    this.size = 12,
    this.color = Colors.black,
    this.weight = FontWeight.normal,
  });

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,style: TextStyle(color: widget.color,fontSize: widget.size,fontWeight: widget.weight),);
  }
}
