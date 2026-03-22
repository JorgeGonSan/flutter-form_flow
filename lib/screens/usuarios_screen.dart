import 'package:flutter/material.dart';
import 'package:formflow/models/usuario.dart';

class UsuariosScreen extends StatelessWidget {
  final List<Usuario> usuarios;

  const UsuariosScreen({super.key, required this.usuarios});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Usuarios")),
      body: ListView.builder(
        itemCount: usuarios.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nombre: ${usuarios[index].nombre}"),
                    Text("Edad: ${usuarios[index].edad}"),
                    Text("Mail: ${usuarios[index].mail}"),
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
