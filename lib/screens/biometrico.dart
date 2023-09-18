import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelanea/providers/provider_local_auth.dart';

class BiometricoScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final canVerificarBiometrico = ref.watch(caCheckBiometricoProvider);
    final localauthprovider = ref.watch(localAutorizacionProvider);
    final tituloestilo = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Biometrico',
          style: tituloestilo.titleLarge,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share_rounded,
                size: 25,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  ref
                      .read(localAutorizacionProvider.notifier)
                      .autenticaciondeusuario();
                },
                child: Text('Autenticar')),
            canVerificarBiometrico.when(
                data: (canCheck) =>
                    Text('Puede Verificar Biometrico:$canCheck'),
                error: (error, _) => Text('Error:$error'),
                loading: () => const CircularProgressIndicator()),
            SizedBox(height: 30),
            Text('Estado del Biometrico', style: TextStyle(fontSize: 20)),
            Text('Estado $localauthprovider', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
