import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:miscelanea/config/inicializarads.dart';

final adBannerProvider = FutureProvider<BannerAd>((Ref) async {
  final ad = await Admobplugin.loadBannerAd();
  return ad;
});
final interstitialAdProvider =
    FutureProvider.autoDispose<InterstitialAd>((Ref) async {
  final ad = await Admobplugin.loadInterstitialAd();
  return ad;
});
