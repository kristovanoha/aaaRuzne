import 'package:flutter/material.dart';
import 'package:from_figma_1/style/myStyle.dart';

class MyLabel extends StatefulWidget {
  final String text;

  MyLabel({required this.text});

  @override
  _MyLabelState createState() => _MyLabelState();
}

class _MyLabelState extends State<MyLabel> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: Text(
        widget.text,
        style: isHovered ? LabelStyle.hoverStyle : LabelStyle.style,
      ),
    );
  }
}