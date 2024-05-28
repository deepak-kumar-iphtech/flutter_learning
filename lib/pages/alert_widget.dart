import 'package:flutter/material.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({super.key});

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Alert Widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      //backgroundColor: Colors.red.shade50,
      body: Center(
        child: Container(
          height: 150,
          width: 250,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.black, border: Border.all(width: 1.0)),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Alert Dialog Box"),
                      content: const Text("You have raised a Alert Dialog Box"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("okay"))
                      ],
                    );
                  },
                );
              },
              child: const Text(
                "Alert Button",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}
