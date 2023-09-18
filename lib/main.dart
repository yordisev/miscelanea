import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelanea/config/temas.dart';
import 'package:miscelanea/routers/rutas.dart';

void main() {
  runApp(
    ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRutas,
      debugShowCheckedModeBanner: false,
      theme: AppTemas().getTheme(),
    );
  }
}
