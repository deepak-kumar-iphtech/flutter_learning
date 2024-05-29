import 'package:flutter/material.dart';

class ListGridView extends StatelessWidget {
  const ListGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Views"),
        ),
        body: Column(
          children: [
            const Text(
              "List View",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: SizedBox(
                height: 200,
                child: ListView(
                  children: [
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 3.0),
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
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.deepPurple, width: 3.0),
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
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 3.0),
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
                  ],
                ),
              ),
            ),
            const Text(
              "Grid View",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            ///Grid view
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 200,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                    Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 3.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(2))),
                      //color: Colors.blue,
                      child: const Center(
                        child: Text(
                          "Box 3",
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
                          border:
                              Border.all(color: Colors.deepPurple, width: 3.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(2))),
                      //color: Colors.blue,
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
                          border:
                              Border.all(color: Colors.deepOrange, width: 3.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(2))),
                      //color: Colors.blue,
                      child: const Center(
                        child: Text(
                          "Box 3",
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
            ),
          ],
        ));
  }
}
