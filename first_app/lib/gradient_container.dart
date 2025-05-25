import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  const GradientContainer.red({super.key})
      : color1 = const Color.fromARGB(255, 255, 0, 0),
        color2 = const Color.fromARGB(255, 255, 60, 60),
        color3 = const Color.fromARGB(255, 255, 120, 120);
      
  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(context) {
   return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    ); 
  }
}
