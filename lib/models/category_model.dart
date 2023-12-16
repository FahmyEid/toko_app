import 'package:flutter/material.dart';

class CategoryModel {
  final String text;
  final String image;
  final Color color;
  final VoidCallback onTap;

  const CategoryModel(
      {required this.onTap,
      required this.color,
      required this.text,
      required this.image});
}
