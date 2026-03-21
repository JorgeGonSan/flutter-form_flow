import 'package:flutter/material.dart';
import 'package:formflow/widgets/my_text_field.dart';

void main() {
  runApp(const MyFormFlow());
}

class MyFormFlow extends StatefulWidget {
  const MyFormFlow({super.key});

  @override
  State<MyFormFlow> createState() => _MyFormFlowState();
}

class _MyFormFlowState extends State<MyFormFlow> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController edadController = TextEditingController();
  TextEditingController mailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form Flow"),
          backgroundColor: Colors.grey[300],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                //Nombre
                MyTextField(
                  myLabel: "Nombre",
                  myController: nombreController,
                  myHintText: "Tu nombre",
                  myKeyboardType: TextInputType.text,
                ),
                //Edad
                MyTextField(
                  myLabel: "Edad",
                  myController: edadController,
                  myHintText: "Tu edad",
                  myKeyboardType: TextInputType.number,
                ),
                //Mail
                MyTextField(
                  myLabel: "Mail",
                  myController: mailController,
                  myHintText: "Tu mail",
                  myKeyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
