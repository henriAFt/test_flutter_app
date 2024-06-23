import 'package:flutter/material.dart';
import 'package:test_app/constante.dart';
import 'package:test_app/navbar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.white,

      elevation: 0,
      actions: [
        Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.transparent,
              child: Transform.scale(
                scale: 1.2,
                child: Text(
                  "Hi, Cabrel",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: kTextColor,
                  ),
                ),
              ),
            ),
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.transparent,
              child: Transform.scale(
                scale: 1.3,
                child: IconButton(
                  onPressed: (){
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilScreen(),
                      ),
                    );*/
                  },
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}