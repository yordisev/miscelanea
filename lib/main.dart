import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelanea/config/inicializarads.dart';
import 'package:miscelanea/config/temas.dart';
import 'package:miscelanea/routers/rutas.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Admobplugin.initialize();
  runApp(
    ProviderScope(
      child: const MainApp(),
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
