import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INTERACTIVE VIEWER"),
      ),
      body: Center(
        child: Container(
          child: InteractiveViewer(
              scaleEnabled: true,
              maxScale: 10,
              minScale: 1,
              // boundaryMargin: EdgeInsets.all(300),
              //constrained: false,
              child: Image.network(
                  "https://images.unsplash.com/photo-1596073419667-9d77d59f033f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cm9zZSUyMGZsb3dlcnxlbnwwfHwwfHw%3D&w=1000&q=80")),
        ),
      ),
    );
  }
}
