import 'package:flutter/material.dart';

class ColorMain{
   static const Color buttonDefault = Color(0xFF5AC8FA);
   static const Color buttonHover = Color(0xFF474512);
   static const Color buttonClick = Color(0xFF72B53E);
   static const Color buttonDisable = Color(0xFFB5453E);
}

class RoundCorner{
   static const Color buttonNormal = Color(0xFF5AC8FA);
   static const Color buttonNoRound = Color(0xFF474512);
}

class FontSize{
   static const double normal = 10;
   static const double big = 20;
}


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

class MainButtonStyle {
  static final ButtonStyle styleDefault = ElevatedButton.styleFrom(
    foregroundColor: Color.fromARGB(255, 25, 156, 77), // Barva textu pro ElevatedButton
    backgroundColor: Color.fromARGB(255, 139, 150, 21), // Barva pozadí pro ElevatedButton
    minimumSize: Size(40, 20), // Minimální velikost tlačítka
    padding: EdgeInsets.symmetric(horizontal: 10), // Padding tlačítka
    shape: const RoundedRectangleBorder( // Tvar tlačítka
      borderRadius: BorderRadius.all(Radius.circular(2)),
   
    ),
    textStyle: TextStyle(fontSize: 10),
);
}

class FigmaButtonStyle {
  static final ButtonStyle styleDefault = ElevatedButton.styleFrom(
    foregroundColor: Colors.black, // Barva pozadí tlačítka
    backgroundColor: ColorMain.buttonDefault,// textu tlačítka
    textStyle: TextStyle(
      fontSize: 20,
      fontFamily: 'Lobster Two',
      fontWeight: FontWeight.w400,
    ),
    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Odsazení tlačítka
    shape: RoundedRectangleBorder( // Tvar tlačítka
      borderRadius: BorderRadius.circular(8),
    ),
  );

   static final ButtonStyle styleClick = ElevatedButton.styleFrom(
    foregroundColor: Colors.black, // Barva pozadí tlačítka
    backgroundColor: ColorMain.buttonClick,// textu tlačítka
    textStyle: TextStyle(
      fontSize: 10,
      fontFamily: 'Lobster Two',
      fontWeight: FontWeight.w400,
    ),
    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Odsazení tlačítka
    shape: RoundedRectangleBorder( // Tvar tlačítka
      borderRadius: BorderRadius.circular(8),
    ),
  );

   static final ButtonStyle styleDisabled = ElevatedButton.styleFrom(
    foregroundColor: Colors.black, // Barva pozadí tlačítka
    backgroundColor: ColorMain.buttonDisable,// textu tlačítka


  
    textStyle: TextStyle(
      color: Colors.black,
                  // fontSize: FontSize.big,
                  fontFamily:  'Lobster',
                  // fontWeight: FontWeight.w400,
                  height: 0)
  );
}