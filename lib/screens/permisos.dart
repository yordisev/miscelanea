import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelanea/providers/provider_mostrar_anuncios.dart';

class PermisosScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final showAds = ref.watch(showAdsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Permisos'),
      ),
      body: ListView(
        children: [
          CheckboxListTile(
            value: showAds,
            title: const Text('Mostrar Ads'),
            subtitle: const Text('Esta opción muestra y oculta ads'),
            onChanged: (_) {
              ref.read(showAdsProvider.notifier).togleAds();
            },
          ),
        ],
      ),
    );
  }
}
