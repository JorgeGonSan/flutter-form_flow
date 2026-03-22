import 'package:flutter/material.dart';
import 'package:formflow/models/usuario.dart';

class UsuariosScreen extends StatefulWidget {
  final List<Usuario> usuarios;

  const UsuariosScreen({super.key, required this.usuarios});

  @override
  State<UsuariosScreen> createState() => _UsuariosScreenState();
}

class _UsuariosScreenState extends State<UsuariosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Usuarios")),
      body: ListView.builder(
        itemCount: widget.usuarios.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Columna nombre+ columna avatar/borrar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.usuarios[index].nombre,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color.fromARGB(
                                255,
                                42,
                                49,
                                49,
                              ),

                              radius: 18,
                              child: Text(
                                widget.usuarios[index].nombre[0],
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  widget.usuarios.removeAt(index);
                                });
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "${widget.usuarios[index].edad} años",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(Icons.mail),
                        ),
                        Text(
                          widget.usuarios[index].mail,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
