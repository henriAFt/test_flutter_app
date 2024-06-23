import 'package:flutter/material.dart';
import 'package:test_app/constante.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: const Text("Henri-codeur"),
              accountEmail: const Text("henrihobga2@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset("assets/images/has.png",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            decoration: const BoxDecoration(
              color: kDrawerColor,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: (){},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Favorites"),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.comment_bank_outlined),
            title: const Text("Your comments"),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.help_outline_outlined),
            title: const Text("Help"),
            onTap: (){},
          ),
          const Divider(),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications_active_outlined),
            title: const Text("Notifications"),
            onTap: (){},
            trailing: Container(
              width: 20,
              height: 20,
              child: const Text("99+"),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text("Logout"),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
