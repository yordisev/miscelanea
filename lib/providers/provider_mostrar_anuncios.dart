import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelanea/config/sharedpreferencias.dart';

class MostrarAdsProviders extends StateNotifier<bool> {
  MostrarAdsProviders() : super(false) {
    checkAdsEstado();
  }
  void checkAdsEstado() async {
    state = await compartiPreferencias.getBool('showads') ?? true;
  }

  void removercheckAdsEstado() {
    compartiPreferencias.setBool('showads', false);
    state = false;
  }

  void showcheckAdsEstado() {
    compartiPreferencias.setBool('showads', true);
    state = true;
  }

  void togleAds() {
    state ? removercheckAdsEstado() : showcheckAdsEstado();
  }
}

final showAdsProvider = StateNotifierProvider<MostrarAdsProviders, bool>((ref) {
  return MostrarAdsProviders();
});
