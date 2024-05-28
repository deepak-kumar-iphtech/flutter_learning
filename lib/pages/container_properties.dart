import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.black)),
              height: 100,
              width: 400,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
              child: const Text("Container1 -> Border"),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.red),
                borderRadius: BorderRadius.circular(16),
              ),
              height: 100,
              width: 400,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
              child: const Text("Container2 -> Border Radius"),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.blue),
                  boxShadow: const [
                    BoxShadow(color: Colors.green, offset: Offset(6.0, 6.0))
                  ]),
              height: 100,
              width: 400,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
              child: const Text('''Container3 -> boxShadow:'''),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2.0, color: const Color.fromARGB(255, 255, 255, 0)),
              ),
              //color: Colors.blue,
              height: 100,
              width: 200,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
              transform: Matrix4.rotationZ(0.3),
              child: const Text(" Container4 -> Box Rotate"),
            ),
          ],
        ),
      ),
    );
  }
}
