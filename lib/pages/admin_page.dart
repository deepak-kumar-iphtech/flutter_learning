import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red.shade100,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 90,
                  color: Colors.red.shade100,
                ),
                Center(
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey,
                          spreadRadius: 1,
                          offset: Offset(1, 3)),
                    ], borderRadius: BorderRadius.circular(50)),
                    child: Image.asset("assets/images/avtar.png"),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  const Text(
                    "Deepak Kumar",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lightbulb_outline_sharp,
                        color: Colors.amber,
                      ),
                      Text("Gold Member")
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Phone",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("+91 9876543210")
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mail",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("deepak@gmail.com")
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Divider(),
                  adminDetails(Icons.credit_card, "  Cards"),
                  const Divider(),
                  adminDetails(
                      CupertinoIcons.person_alt_circle, "  Profile Details"),
                  const Divider(),
                  adminDetails(Icons.settings, "  Settings"),
                  const Divider(),
                  adminDetails(Icons.logout, "  Logout"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell adminDetails(var icon, String name) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                Text(name),
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
