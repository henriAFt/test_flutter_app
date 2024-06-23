import 'package:flutter/material.dart';
import 'package:test_app/constante.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        fixedSize: const MaterialStatePropertyAll(Size(330, 50)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(kDrawerColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),

      onPressed: press,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
        ),
      ),
    );
  }
}