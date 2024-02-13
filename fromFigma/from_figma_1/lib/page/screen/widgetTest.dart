import 'package:flutter/material.dart';
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
                onPressed: () {
                  // Akce pro první tlačítko
                },
                child: Text('Stiskni mě'),
              ),
              ElevatedButton(
                style: MaleButtonStyle.style,
                onPressed: () {
                  // Akce pro druhé tlačítko
                },
                child: Text('Stiskni mě 2'),
              ),            
            MyLabel(  text: 'Test lab',)
              ]
          ),
        ),
      ),
    );
  }
}
