import 'package:flutter/material.dart';
import 'package:test_app/constante.dart';

class AccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AccountCheck({
    super.key,
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an account ? " : "Already have an account ? ",
          style: TextStyle(
              color: kTextColor,
              fontSize: 16
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              color: kDrawerColor,
              fontSize: 15.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}