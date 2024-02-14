import 'package:flutter/material.dart';

import '../style/myStyle.dart';

class FigmaButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
 

  FigmaButton({required this.text, required this.onPressed});

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<FigmaButton> {
  bool isHovered = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() 
      { isHovered = true; print("hover");}
      ),
      onExit: (event) => setState(() { isHovered = false; print("hoverFLA");}),
      child: GestureDetector(
        onTapDown: (details) => setState(() => isPressed = true),
        onTapUp: (details) {
          setState(() => isPressed = false);
          widget.onPressed();
        },
        onTapCancel: () => setState(() => isPressed = false),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: isPressed
                ? ColorMain.buttonClick
                : (isHovered ? Colors.grey : ColorMain.buttonDefault),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            widget.text,
            style: isPressed ? FigmaFontStyle.clickFont: FigmaFontStyle.defaultFont
           // style: FigmaButtonStyle.styleDefault,
          ),
        ),
      ),
    );
  }
}