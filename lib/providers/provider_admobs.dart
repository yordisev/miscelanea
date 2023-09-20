import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:miscelanea/config/inicializarads.dart';
import 'package:miscelanea/providers/provider_mostrar_anuncios.dart';

final adBannerProvider = FutureProvider<BannerAd>((ref) async {
  final showAds = ref.watch(showAdsProvider);
  if (!showAds) throw 'Ads Deshabilitado';
  final ad = await Admobplugin.loadBannerAd();
  return ad;
});
final interstitialAdProvider =
    FutureProvider.autoDispose<InterstitialAd>((ref) async {
  final showAds = ref.watch(showAdsProvider);
  if (!showAds) throw 'Ads Deshabilitado';
  final ad = await Admobplugin.loadInterstitialAd();
  return ad;
});
final rewardedAdProvider = FutureProvider.autoDispose<RewardedAd>((ref) async {
  final showAds = ref.watch(showAdsProvider);
  if (!showAds) throw 'Ads Deshabilitado';
  final ad = await Admobplugin.loadRewardedAd();
  return ad;
});
