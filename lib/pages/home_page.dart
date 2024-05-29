import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_app/widgets/drawer.dart';
import 'package:my_first_app/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation: 10,
        title: const Text(
          'Learning App',
          //style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(207, 255, 255, 255),
        //iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/app_bar.png"),
          const SizedBox(
            height: 10.0,
          ),
          const SizedBox(
            //color: Color.fromARGB(255, 210, 226, 255),
            height: 100,
            width: 350,
            child: Text(
                "Welcome to the learning app of flutter...\nHere we will se the implementation of Widgets, libraries, Scaffold, Login Page"),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        //elevation: 5.0,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: const Color.fromARGB(255, 119, 106, 255),
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Login",
              icon: Icon(Icons.account_circle_rounded),
            ),
          ],
          onTap: (int indexOfItem) {}),
    );
  }
}
