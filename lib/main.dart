import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Danh sách ảnh'),
        ),
        body: ImageList(),
      ),
    );
  }
}

class ImageList extends StatelessWidget {
  final List<String> imageAssets = [
    'asset/img.png',
    'asset/img_1.png',
    'asset/img_2.png',
    'asset/img_3.png',
    'asset/img_4.png',
    'asset/img_5.png',
    'asset/img_6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: imageAssets.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imageAssets[index]), // Sử dụng Image.asset để hiển thị ảnh từ asset
        );
      },
    );
  }
}