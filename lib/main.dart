import 'package:flutter/material.dart';
import 'package:toko/views/home_view.dart';

void main() {
  runApp(const TokoApp());
}

class TokoApp extends StatelessWidget {
  const TokoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
