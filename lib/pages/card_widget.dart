import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              color: Colors.white,
              elevation: 5,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/signup.png",
                    scale: 5,
                  ),
                  const ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: Text("Card Title"),
                    subtitle: Text("This is predefined card "),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text("ACTION 1")),
                            TextButton(
                                onPressed: () {},
                                child: const Text("ACTION 2")),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  )
                ],
              ),
            ),
            const Divider(),
            Card(
              color: Colors.white,
              elevation: 5,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/laptop.jpg",
                    scale: 3,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "HP Envy x360",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              CupertinoIcons.heart_fill,
                              color: Colors.red,
                            ),
                          ],
                        ),
                        const Divider(),
                        const Text(
                            "Some quick example text to build on the card"),
                        const SizedBox(
                          height: 16.0,
                        ),
                        ButtonBar(
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue),
                                child: const Text(
                                  "Specifications",
                                  style: TextStyle(color: Colors.white),
                                )),
                            const SizedBox(
                              width: 6.0,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green),
                                child: const Text("Add to cart",
                                    style: TextStyle(color: Colors.white)))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Card 3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
