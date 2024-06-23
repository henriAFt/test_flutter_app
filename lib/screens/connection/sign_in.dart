import 'package:flutter/material.dart';
import 'package:test_app/constante.dart';
import 'package:test_app/screens/connection/sign_up%20components/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BodySign(),
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: false,
    backgroundColor: Colors.white,
    
    elevation: 0,
    actions: [
      Row(
        children: [
          Text(
            "Skip",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: kDrawerColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          IconButton(
            icon: const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: kDrawerColor,
                size: 25,
            ),
            onPressed: (){
              // Navigator.push(
              //   context,
              //   PageRouteBuilder(
              //     pageBuilder: (_, __, ___) => const LogInScreen(),
              //   ),
              // );
            },
          ),
        ],
      )
    ],
  );
}

