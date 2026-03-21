import 'package:flutter/material.dart';

void main() {
  runApp(const MyFormFlow());
}

class MyFormFlow extends StatefulWidget {
  const MyFormFlow({super.key});

  @override
  State<MyFormFlow> createState() => _MyFormFlowState();
}

class _MyFormFlowState extends State<MyFormFlow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form Flow"),
          backgroundColor: Colors.grey[300],
        ),
        body: Center(child: Column(children: [])),
      ),
    );
  }
}
