import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter_deep_links/item_detail_screen.dart';
import 'package:get/get.dart';

class DeepLinkHandler {
  static StreamSubscription<Uri>? _linkSubscription;

  static Future<void> init() async {
    // Handle links
    _linkSubscription = AppLinks().uriLinkStream.listen((uri) {
      print("App links --->>> ${uri.path} / ${uri.pathSegments}");
      processRoute(uri.path);
    });
  }

  static void dispose () {
    _linkSubscription?.cancel();
  }

  static void processRoute(String path) {
    if(path.startsWith("/item")){
      Get.to(ItemDetailScreen(id: path.split("/").last));
    }
  }

}