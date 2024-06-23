import 'package:flutter/material.dart';
import 'package:test_app/constante.dart';
import 'package:test_app/screens/home/components/action_card.dart';
import 'package:test_app/screens/home/components/option_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: size.height * 0.03),
          Container(
            height: 150,
            width: 415,
            margin: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: <Widget>[
                SizedBox(height: size.height * 0.05),
                const Text(
                  "Total savings",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.01),
                const Text(
                  "XAF 145 000 125",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.05),
          OptionCards(
            text1: 'Depot',
            text2: 'Paiment',
            press1: () {},
            press2: () {},
            color1: Colors.yellow.shade600,
            color2: Colors.red.shade400,
          ),
          const SizedBox(height: 12),
          OptionCards(
            text1: 'Retrait',
            text2: 'Tontine',
            press1: () {},
            press2: () {},
            color1: Colors.blue.shade300,
            color2: Colors.yellow.shade600,
          ),
          SizedBox(height: size.height * 0.04),
          const SizedBox(
            height: 28,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: kDefaultPadding * 10),
                  child: Text(
                    "Actions à venir",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.03),
          ActionCard(
            image: 'assets/images/picsou.png',
            title: 'TM Solutions',
            description:
                'Your monthly payment of XAF 10 000 is overdue by 05 days',
            press: () {},
          ),
          ActionCard(
            image: 'assets/images/picsou.png',
            title: 'TM Solutions',
            description:
                'Your monthly payment of XAF 10 000 is overdue by 05 days',
            press: () {},
          ),
          ActionCard(
            image: 'assets/images/picsou.png',
            title: 'TM Solutions',
            description:
                'Your monthly payment of XAF 10 000 is overdue by 05 days',
            press: () {},
          ),
          SizedBox(height: size.height * 0.02),
        ],
      ),
    );
  }
}
