import 'package:flutter/material.dart';

class OtherWidgets extends StatefulWidget {
  const OtherWidgets({
    super.key,
  });

  @override
  State<OtherWidgets> createState() => _PracticePageState();
}

class _PracticePageState extends State<OtherWidgets> {
  bool stateChange = false;
  int _selectedValue = 1;
  bool _loading = false;
  int sliderValue = 0;
  double start = 10.0;
  double end = 80.0;
  bool isSwitched = false;

  void initstate() {
    super.initState();
    _loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Widgets"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text("1. CheckBox"),
                    Checkbox(
                        value: stateChange,
                        onChanged: (value) {
                          setState(() {
                            stateChange = !stateChange;
                          });
                        })
                  ],
                ),
                const Divider(),
                const Text("2. Radio Button"),
                radioListTile(button: 1, indexValue: 1),
                radioListTile(button: 2, indexValue: 2),
                const Divider(),
                const Text("3. Progress Bar "),
                _loading
                    ? const LinearProgressIndicator()
                    : TextButton(
                        onPressed: () {
                          setState(() {
                            _loading = !_loading;
                          });
                        },
                        child: const Text(" Press here to view Progress bar")),
                _loading
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            _loading = !_loading;
                          });
                        },
                        child: const Text(" STOP"),
                      )
                    : const Text(""),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("4. Slider  "),
                    Row(
                      children: [
                        const Icon(Icons.volume_up),
                        Slider(
                            min: 0,
                            max: 100,
                            value: sliderValue.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                sliderValue = value.toInt();
                              });
                            }),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('''5. Range
    Slider'''),
                    Row(
                      children: [
                        const Icon(Icons.volume_up),
                        RangeSlider(
                            min: 10,
                            max: 80,
                            values: RangeValues(start, end),
                            onChanged: (value) {
                              setState(() {
                                start = value.start;
                                end = value.end;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("6. Snack Bar    "),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple.shade600),
                        onPressed: () {
                          final snackBar = SnackBar(
                            content:
                                const Text("Hey! This is SnackBar Message"),
                            duration: const Duration(seconds: 3),
                            action:
                                SnackBarAction(label: "Undo", onPressed: () {}),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: const Text(
                          "Show SnackBar",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("7.Switch"),
                    Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = !isSwitched;
                          });
                        }),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  RadioListTile<int> radioListTile({int button = 0, int indexValue = 0}) {
    return RadioListTile(
        title: Text("Radio Button $button"),
        value: indexValue,
        groupValue: _selectedValue,
        onChanged: (value) {
          setState(() {
            _selectedValue = value!;
          });
        });
  }
}
