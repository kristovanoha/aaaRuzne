// Soubor: custom_button.dart
import 'package:flutter/material.dart';

import '../style/myStyle.dart';

class MainButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final ButtonStyle? style; // volitelný parametr, pokud chcete přepsat styl

  MainButton({required this.label, required this.onPressed, this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: style ?? FigmaButtonStyle.styleDefault, // použijeme výchozí nebo předaný styl
      onPressed: onPressed,
      onHover: (value)  { print("HOVER");},
      
      child: Text(label),
    );
  }
}
