import 'package:flutter/material.dart';

class Initial extends StatelessWidget {
  const Initial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Correo',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  child: Text('Iniciar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
