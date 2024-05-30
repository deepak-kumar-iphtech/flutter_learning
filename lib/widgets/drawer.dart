import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 119, 106, 255),
            ),
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 119, 106, 255)),
              accountName: Text(
                "Deepak Kumar",
              ),
              accountEmail: Text("deepakkumar.iphtechnologies.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/avtar.png"),
              ),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, MyRoutes.loginRoute),
            title: const Text("Login"),
            leading: const Icon(Icons.login),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, MyRoutes.signupRoute),
            title: const Text("Signup"),
            leading: const Icon(Icons.new_label),
          ),
          ListTile(
            title: const Text("Container"),
            leading: const Icon(CupertinoIcons.square),
            onTap: () => Navigator.pushNamed(context, MyRoutes.containerRoute),
          ),
          ListTile(
            title: const Text("Buttons"),
            leading: const Icon(Icons.radio_button_checked_outlined),
            onTap: () => Navigator.pushNamed(context, MyRoutes.buttonRoute),
          ),
          ListTile(
            title: const Text("Responsive Widgets"),
            leading: const Icon(Icons.menu),
            onTap: () => Navigator.pushNamed(context, MyRoutes.responsiveRoute),
          ),
          ListTile(
            title: const Text("Alert Widgets"),
            leading: const Icon(Icons.dangerous_outlined),
            onTap: () => Navigator.pushNamed(context, MyRoutes.alertRoute),
          ),
          ListTile(
            title: const Text("Card Widgets"),
            leading: const Icon(Icons.credit_card),
            onTap: () => Navigator.pushNamed(context, MyRoutes.cardRoute),
          ),
          ListTile(
            title: const Text("List&Grid View"),
            leading: const Icon(Icons.grid_view_sharp),
            onTap: () => Navigator.pushNamed(context, MyRoutes.viewRoute),
          ),
          ListTile(
            title: const Text("Other Widgets"),
            leading: const Icon(Icons.devices_other),
            onTap: () =>
                Navigator.pushNamed(context, MyRoutes.otherWidgetsRoute),
          ),
          ListTile(
            title: const Text("Practice"),
            leading: const Icon(Icons.star),
            onTap: () => Navigator.pushNamed(context, MyRoutes.practiceRoute),
          ),
        ],
      ),
    );
  }
}
