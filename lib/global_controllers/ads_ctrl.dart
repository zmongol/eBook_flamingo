import 'dart:io';

import 'package:book_app/functions/getin_list_index.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AppAdsCtrl extends GetxService {
  @override
  void onReady() {
    _createInterstitialAd();
    super.onReady();
  }

  @override
  void onClose() {
    _interstitialAd?.dispose();
    super.onClose();
  }

  InitializationStatus? initializationStatus;
  InterstitialAd? _interstitialAd;
  int numInterstitialLoadAttempts = 0;
  int maxFailedLoadAttempts = 3;

  int _lastBannerindex = 0;
  List<String> andBannerAdsID = [
    // Put banner ids here
  ];
// int _lastInterStiindex = 0;
  List<String> andInterStiAdsID = [
    // Put Int.Sti ids here
  ];

  final adUnitId = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/1033173712'
      : 'ca-app-pub-3940256099942544/4411468910';

  void _createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(
        keywords: <String>[],
        nonPersonalizedAds: true,
      ),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) async {
          print("onAdLoaded");
          _interstitialAd = ad;
          numInterstitialLoadAttempts = 0;
          _interstitialAd!.setImmersiveMode(true);
          await Future.delayed(Duration(seconds: 1)); // Just for test
          showInterstitialAd(onclose: () {}); // Just for test
        },
        onAdFailedToLoad: (LoadAdError error) {
          print("onAdFailedToLoad");
          numInterstitialLoadAttempts += 1;
          _interstitialAd = null;
        },
      ),
    );
  }

  void showInterstitialAd({
    required Function() onclose,
  }) {
    if (_interstitialAd == null) return;
    _interstitialAd?.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) {},
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        ad.dispose();
        _createInterstitialAd();
        onclose();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        ad.dispose();
        _createInterstitialAd();
      },
    );
    _interstitialAd!.show();
    _interstitialAd = null;
  }

  String get getBannerid {
    final _id = getinListindex(_lastBannerindex, andBannerAdsID.length);
    _lastBannerindex++;
    return andBannerAdsID[_id];
  }
}
