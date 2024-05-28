import 'package:flutter/material.dart';

class ButtonTypes extends StatefulWidget {
  const ButtonTypes({super.key});

  @override
  State<ButtonTypes> createState() => _ButtonTypesState();
}

class _ButtonTypesState extends State<ButtonTypes> {
  String? dropDownValue;
  var listItems = ["Item 1", "Item 2", "Item 3", "Item 4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Types of Buttons",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                height: 65,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "  1. Text Button",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: () {}, child: const Text("Click Me"))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                height: 65,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red.shade900, width: 2.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "  2. Elevated Button",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(),
                      child: const Text("Click Me"),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                height: 65,
                width: 400,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.yellow.shade800, width: 2.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "  3. DropDown Button",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    DropdownButton(
                      hint: const Text("Select Items"),
                      value: dropDownValue,
                      icon: const Icon(Icons.keyboard_arrow_down_rounded),
                      items: listItems.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          dropDownValue = value!;
                        });
                      },
                    ),
                    //const SizedBox(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                height: 65,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange, width: 2.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "  3. Icon Button",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.volume_up))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                height: 65,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "  3. Inkwell Button",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      splashColor: Colors.green,
                      highlightColor: Colors.blue,
                      child: const Text("Click Me"),
                      onTap: () {
                        setState(() {});
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
