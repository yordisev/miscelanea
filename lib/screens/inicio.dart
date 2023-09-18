import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miscelanea/widgets/widgets.dart';

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titulomediano = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Miscelanea',
          style: titulomediano.titleLarge,
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.push('/permisos');
              },
              icon: const Icon(
                Icons.settings,
                size: 25,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: CustomScrollView(
          slivers: [MenuScreen()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh_rounded),
        onPressed: () {},
      ),
    );
  }
}
