import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Item details"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            Text("Details for item $id", textAlign: TextAlign.center),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Go back"),
            ),
          ],
        ),
      ),
    );
  }
}
