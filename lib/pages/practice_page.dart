import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PracticePage extends StatefulWidget {
  const PracticePage({
    super.key,
  });

  @override
  State<PracticePage> createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  bool stateChange = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cards"),
        ),
        body: Column(
          children: [
            const Text(
              "List View",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Stack(
              children: [
                Positioned(
                  right: 21,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          stateChange = !stateChange;
                        });
                      },
                      icon: const Icon(
                        Icons.list,
                        size: 30,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection:
                          stateChange ? Axis.horizontal : Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 150,
                            width: 160,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 3.0),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(2))),
                            //color: Colors.blue,
                            child: const Center(
                              child: Text(
                                "Box 1",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 150,
                            width: 160,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.deepPurple, width: 3.0),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(2))),
                            //color: Colors.blue,
                            child: const Center(
                              child: Text(
                                "Box 2",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 150,
                            width: 160,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 3.0),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(2))),
                            //color: Colors.blue,
                            child: const Center(
                              child: Text(
                                "Box 3",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              "Grid View",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
