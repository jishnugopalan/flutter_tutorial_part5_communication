import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Communication",
      theme: ThemeData(primarySwatch: Colors.blue,primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("Communicaton"),),
        body:const Column(children: [
          SizedBox(height: 10,),
          Badge(
            label: Text("1"),
            alignment: Alignment.center,
            child: Icon(Icons.notifications),
          ),
          SizedBox(height: 10,),
          CircularProgressIndicator(),
          SizedBox(height: 10,),
          LinearProgressIndicator(
            color: Colors.red,
          ),
          SizedBox(height: 10,),
          SnackBarExample(),
          SizedBox(height: 10,),
          SnackBarExample2()

        ],),
      ),
    );
  }
}
class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Show Snackbar'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                // Code to execute.
              },
            ),
            content: const Text('Awesome SnackBar!'),
            duration: const Duration(milliseconds: 1500),
            width: 280.0, // Width of the SnackBar.
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0, // Inner padding for SnackBar content.
            ),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      },
    );
  }
}
class SnackBarExample2 extends StatelessWidget {
  const SnackBarExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Show Snackbar'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Awesome Snackbar!'),
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
      },
    );
  }
}

