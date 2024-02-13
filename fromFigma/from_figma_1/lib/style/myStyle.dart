import 'package:flutter/material.dart';

class HlavniButtonStyle {
  static final ButtonStyle style = ElevatedButton.styleFrom(
    foregroundColor: const Color.fromARGB(255, 156, 25, 25), // Barva textu pro ElevatedButton
    backgroundColor: Color.fromARGB(255, 31, 253, 42), // Barva pozadí pro ElevatedButton
    minimumSize: Size(88, 36), // Minimální velikost tlačítka
    padding: EdgeInsets.symmetric(horizontal: 16), // Padding tlačítka
    shape: const RoundedRectangleBorder( // Tvar tlačítka
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

    static final ButtonStyle smallerStyle = style.copyWith(
    minimumSize: MaterialStateProperty.all<Size>(Size.fromWidth(60.0)), // Nastavení minimální šířky tlačítka na 2/3 původní velikosti
  );
}


class MaleButtonStyle {
  static final ButtonStyle style = ElevatedButton.styleFrom(
    foregroundColor: const Color.fromARGB(255, 156, 25, 25), // Barva textu pro ElevatedButton
    backgroundColor: Color.fromARGB(255, 234, 253, 31), // Barva pozadí pro ElevatedButton
    minimumSize: Size(40, 20), // Minimální velikost tlačítka
    padding: EdgeInsets.symmetric(horizontal: 10), // Padding tlačítka
    shape: const RoundedRectangleBorder( // Tvar tlačítka
      borderRadius: BorderRadius.all(Radius.circular(2)),
   
    ),
    textStyle: TextStyle(fontSize: 10),
);
}

class LabelStyle {
  static final TextStyle style = TextStyle(
    fontSize: 15, // Velikost písma
    color: const Color.fromARGB(255, 54, 219, 244), // Červená barva
  );

  static final TextStyle hoverStyle = TextStyle(
    fontSize: 15,
    color: Colors.green,
  );
}