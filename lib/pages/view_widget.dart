import 'package:flutter/material.dart';

class ListGridView extends StatefulWidget {
  const ListGridView({
    super.key,
  });

  @override
  State<ListGridView> createState() => _ListGridViewState();
}

class _ListGridViewState extends State<ListGridView> {
  bool stateChange = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Views"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "List View",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            stateChange = !stateChange;
                          });
                        },
                        icon: const Icon(
                          Icons.list,
                          size: 30,
                        )),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2.0)),
                  height: 220,
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
                const SizedBox(
                  height: 32.0,
                ),
                const Divider(),
                const SizedBox(
                  height: 16.0,
                ),
                const Text(
                  "Grid View",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                ///Grid view
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2.0)),
                  height: 220,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 3,
                            crossAxisSpacing: 3,
                            crossAxisCount: 2),
                    children: [
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 3.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(2))),
                        child: const Center(
                          child: Text(
                            "Box 1",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 3.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(2))),
                        child: const Center(
                          child: Text(
                            "Box 2",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.deepPurple, width: 3.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(2))),
                        child: const Center(
                          child: Text(
                            "Box 3",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.deepOrange, width: 3.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(2))),
                        child: const Center(
                          child: Text(
                            "Box 4",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
