import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/usuario.png'), // Asegúrate de tener esta imagen en tu carpeta assets
            ),
            SizedBox(height: 16),
            Text(
              'Juan Pérez',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Teléfono: +57 300 123 4567',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              'Correo: juan.perez@email.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
