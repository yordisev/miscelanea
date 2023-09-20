import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelanea/providers/provider_admobs.dart';

class RewardedScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final rewardedAdAdmods = ref.watch(rewardedAdProvider);
    ref.listen(rewardedAdProvider, (previous, next) {
      if (!next.hasValue) return;
      if (next.value == null) return;
      next.value!.show(onUserEarnedReward: (ad, reward) {
        print('Puntos Ganados:$reward');
      });
    });
    if (rewardedAdAdmods.isLoading) {
      return const Scaffold(
        body: Center(
          child: Text('cargado Ad Anuncio'),
        ),
      );
    }
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
