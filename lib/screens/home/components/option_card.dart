import 'package:flutter/material.dart';

class OptionCards extends StatelessWidget {
  const OptionCards({
    super.key,
    required this.text1,
    required this.text2,
    required this.press1,
    required this.press2, 
    required this.color1,
    required this.color2,
  });

  final String text1, text2;
  final VoidCallback press1, press2;
  final Color color1, color2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 110,
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 24, right: 24),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: press1,
            child: Container(
              alignment: Alignment.center,
              width: size.width / 2.5,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color1,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: size.height * 0.02),
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    text1,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: press2,
            child: Container(
              alignment: Alignment.center,
              width: size.width / 2.5,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color2,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: size.height * 0.02),
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    text2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
