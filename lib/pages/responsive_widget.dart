import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            "Use of Expanded",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  width: 50,
                  decoration: const BoxDecoration(color: Colors.cyan),
                ),
              ),
              Container(
                height: 150,
                width: 50,
                decoration: const BoxDecoration(color: Colors.blue),
              ),
              Container(
                height: 150,
                width: 50,
                decoration: const BoxDecoration(color: Colors.blueGrey),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  width: 50,
                  decoration: const BoxDecoration(color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            "Use of Flexible",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Container(
                  height: 150,
                  width: 50,
                  decoration: const BoxDecoration(color: Colors.blue),
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Container(
                  height: 150,
                  width: 50,
                  decoration: const BoxDecoration(color: Colors.amber),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            "Use of Fitted Box",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan, width: 2.0)),
            child: const FittedBox(
              child: Text("This is fitted box"),
            ),
          ),
        ],
      ),
    );
  }
}
