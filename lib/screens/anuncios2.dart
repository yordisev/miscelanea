import 'package:flutter/material.dart';

class RewardedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tituloestilo = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Rewarded', style: tituloestilo.titleLarge),
      ),
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
