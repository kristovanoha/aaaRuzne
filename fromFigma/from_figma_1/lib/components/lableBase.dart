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
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: GestureDetector(
        onTapDown: (details) => setState(() => isPressed = true),
        onTapUp: (details) => setState(() => isPressed = false),
        onTapCancel: () => setState(() => isPressed = false),
        child: Container(
          padding: EdgeInsets.all(8.0),
          //color: isPressed ? Colors.blue : Colors.transparent,
          child: Text(
            widget.text,
            style: isPressed ? LabelStyle.hoverStyle : LabelStyle.style,
          ),
        ),
      ),
    );
  }
}



