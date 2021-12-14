import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Adding List in Flutter',
      home:FlutterList(),
    );
  }
}

// Define a custom Form widget.
class FlutterList extends StatefulWidget {
  const FlutterList({Key? key}) : super(key: key);

  @override
  _FlutterList createState() => _FlutterList();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _FlutterList extends State<FlutterList> {
// Create a text controller and use it to retrieve the current value
// of the TextField.
  final myController = TextEditingController();
  final List<String> names = <String>[
    'Apple',
    'Orange',
    'Dragon Fruit',
    'Banana',
    'Jackfruit',
  ];


  @override
  void dispose() {
// Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adding List in Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          controller: myController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Choose any number between 1-5",
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

          var MyVar = int.parse(myController.text)-1;
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('${names[MyVar]}'),
                );
              }
              );

        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}