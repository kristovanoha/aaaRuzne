import 'package:flutter/material.dart';
import 'package:from_figma_1/components/buttonFigma.dart';
import 'package:from_figma_1/components/buttonMain.dart';
import 'package:from_figma_1/components/lableBase.dart';

import '../../style/myStyle.dart';

class WidgetTest extends StatelessWidget {
  

  @override
 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
    
         body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: HlavniButtonStyle.style,
                onHover: (value) {
                  print("Hover zakla tlaco");
                },
                onPressed: () {
                  // Akce pro první tlačítko
                },
                child: Text('Stiskni mě'),
              ),
              // ElevatedButton(
              //   style: MaleButtonStyle.style,
              //   onPressed: () {
              //     // Akce pro druhé tlačítko
              //   },
              //   child: Text('Stiskni mě 2'),
              // ),            
            MyLabel(  text: 'Test lab',),
            MainButton(
              label: "Default", 
              onPressed: () {
                print("print");
                  // Akce pro vlastní tlačítko MainButton
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Stisknuto')),
                  );
                }),

            MainButton(
              label: "Disabled", 
              style: FigmaButtonStyle.styleDisabled,
              onPressed: () {
                print("print");
                  // Akce pro vlastní tlačítko MainButton
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Stisknuto')),
                  );
                }),

            
            FigmaButton(text: "neco",
             onPressed: () => {},)



              ]
          ),
        ),
      ),
    );
  }
}
