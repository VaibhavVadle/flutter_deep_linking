import 'package:flutter/material.dart';
import 'package:flutter_deep_links/deep_link_handler.dart';
import 'package:flutter_deep_links/item_detail_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeScreen> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(title: const Text('Home screen'), centerTitle: true),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        itemCount: 30,
        itemBuilder:
            (context, index) => ListTile(
              onTap: () => Get.to(ItemDetailScreen(id: index.toString())),
              title: Text('Item - $index'),
            ),
        separatorBuilder: (_, __) => Divider(height: 0),
      ),
    );
  }
}

class HomeController extends GetxController {
  @override
  void onInit() {
    DeepLinkHandler.init();
    super.onInit();
  }

  @override
  void onClose() {
    DeepLinkHandler.dispose();
    super.onClose();
  }
}
