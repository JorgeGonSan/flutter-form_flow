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

  String nombreError = "";
  String edadError = "";
  String mailError = "";
  //validar Nombre
  String validarNombre(String nombreText) {
    if (nombreText.isEmpty) {
      nombreError = "no puede estar vacio";
    } else {
      nombreError = "";
    }
    return nombreError;
  }

  //Validar Edad
  String validarEdad(String edadText) {
    if (edadText.isEmpty) {
      edadError = "La edad no puede estar vacia";
    } else {
      try {
        int edad = int.parse(edadText);
        if (edad < 1 || edad > 120) {
          edadError = "Esa edad no es posible";
        } else {
          edadError = "";
        }
      } catch (e) {
        edadError = "Introduce una edad valida";
      }
    }
    return edadError;
  }

  //Validar Mail
  String validarMail(String mailText) {
    if (mailText.isEmpty) {
      mailError = "El mail no puede esta vacio";
    } else if (!(mailText.contains("@") && mailText.contains("."))) {
      mailError = "Formato de mail invalido";
    } else {
      mailError = "";
    }
    return mailError;
  }

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
                Text(nombreError),
                MyTextField(
                  myLabel: "Nombre",
                  myController: nombreController,
                  myHintText: "Tu nombre",
                  myKeyboardType: TextInputType.text,
                ),

                //Edad
                Text(edadError),
                MyTextField(
                  myLabel: "Edad",
                  myController: edadController,
                  myHintText: "Tu edad",
                  myKeyboardType: TextInputType.number,
                ),
                //Mail
                Text(mailError),
                MyTextField(
                  myLabel: "Mail",
                  myController: mailController,
                  myHintText: "Tu mail",
                  myKeyboardType: TextInputType.emailAddress,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: () {
                      nombreController.text;
                      setState(() {
                        //validar nombre
                        nombreError = validarNombre(nombreController.text);
                        //validar edad
                        edadError = validarEdad(edadController.text);
                        //validar mail
                        mailError = validarMail(mailController.text);
                        //limpiar campos
                        if (nombreError.isEmpty &&
                            edadError.isEmpty &&
                            mailError.isEmpty) {
                          nombreController.clear();
                          print("nombre ok");
                          edadController.clear();
                          print("edad ok");
                          mailController.clear();
                          print("mail ok");
                        }
                      });
                    },
                    child: Text("Enviar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
