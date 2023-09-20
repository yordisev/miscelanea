import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:miscelanea/providers/provider_admobs.dart';
import 'package:miscelanea/widgets/widgets.dart';

class InicioScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final adbanner = ref.watch(adBannerProvider);
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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: CustomScrollView(
                slivers: [MenuScreen()],
              ),
            ),
          ),
          adbanner.when(
              data: (bannerad) => SizedBox(
                  width: bannerad.size.width.toDouble(),
                  height: bannerad.size.height.toDouble(),
                  child: AdWidget(
                    ad: bannerad,
                  )),
              error: (_, __) => const SizedBox(),
              loading: () => Text('Cargando Anuncio'))
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.refresh_rounded),
      //   onPressed: () {},
      // ),
    );
  }
}
