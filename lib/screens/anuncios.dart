import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelanea/providers/provider_admobs.dart';

class AdFullScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final interstitialAdmods = ref.watch(interstitialAdProvider);
    // if (interstitialAdmods.hasValue) {
    //   interstitialAdmods.value!.show();
    // }
    ref.listen(interstitialAdProvider, (previous, next) {
      if (!next.hasValue) return;
      if (next.value == null) return;
      next.value!.show();
    });
    if (interstitialAdmods.isLoading) {
      return const Scaffold(
        body: Center(
          child: Text('cargado Ad Anuncio'),
        ),
      );
    }
    final tituloestilo = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('AdFullScreen', style: tituloestilo.titleLarge),
      ),
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
