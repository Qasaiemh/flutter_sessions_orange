import 'package:flutter/material.dart';


//This function triggers the build process
void main() => runApp( MyApp2());

// StatefulWidget
class MyAppFull extends StatefulWidget {
  const MyAppFull({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyAppFullState createState() => _MyAppFullState();
}

class _MyAppFullState extends State<MyAppFull> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 255, 201),
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.green,
          title: const Text(
            "GeeksforGeeks",
            textAlign: TextAlign.start,
          ),
        ), // AppBar
        body: const Center(
          child: Text(
            "StateFul Widget",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ), // Container
      ), // Scaffold
    ); // MaterialApp
  }
}





class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          MyStatefulPage(),
        ],
      ),

    );
  }
}

class MyStatefulPage extends StatefulWidget {
  @override
  _MyStatefulPageState createState() => _MyStatefulPageState();
}

class _MyStatefulPageState extends State<MyStatefulPage> {
  String label = 'Initial Label';

  void changeLabel() {
    //label = 'New Label';

    setState(() {
      label = 'New Label';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Column(
            children: [
              Text(label),
              ElevatedButton(
                onPressed: changeLabel,
                child: Text('Change Label'),
              ),
            ],
          ),

    );
  }
}
