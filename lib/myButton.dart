import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';

class myButton extends StatelessWidget {
  // Variable Decleretion
  final color;
  final textColor;
  final buttonText;
  final buttonTapped;
  myButton({
    this.color,
    this.textColor,
    this.buttonText,
    this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: buttonTapped,
        child: Padding(
          padding: const EdgeInsets.all(0.2),
          child: ClipRRect(
            child: Container(
              color: color,
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
