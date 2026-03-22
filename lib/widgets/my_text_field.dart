import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String myLabel;
  final TextEditingController myController;
  final TextInputType myKeyboardType;
  final String myHintText;

  const MyTextField({
    super.key,
    required this.myLabel,
    required this.myController,
    required this.myHintText,
    required this.myKeyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20,
        top: 10,
        bottom: 30,
      ),
      child: TextField(
        controller: myController,
        keyboardType: myKeyboardType,
        decoration: InputDecoration(
          labelText: myLabel,
          hintText: myHintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
      
    );
  }
}
