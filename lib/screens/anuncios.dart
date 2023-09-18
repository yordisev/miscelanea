import 'package:flutter/material.dart';

class AnunciosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tituloestilo = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Anuncios', style: tituloestilo.titleLarge),
      ),
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
