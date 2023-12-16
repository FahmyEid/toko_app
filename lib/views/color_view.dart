import 'package:flutter/material.dart';
import 'package:toko/models/category_part_model.dart';
import 'package:toko/widget/category_part_widget.dart';

class ColorView extends StatelessWidget {
  ColorView({super.key});
  final List<CategoryPartModel> categoryPartModel = [
    CategoryPartModel(
        etext: 'black',
        jtext: 'Kuro',
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png'),
    CategoryPartModel(
        etext: 'brown',
        jtext: 'chairo',
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png'),
    CategoryPartModel(
        etext: 'red',
        jtext: 'aka',
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png'),
    CategoryPartModel(
        etext: 'green',
        jtext: 'midori',
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png'),
    CategoryPartModel(
        etext: 'gray',
        jtext: 'gure-',
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png'),
    CategoryPartModel(
        etext: 'white',
        jtext: 'shiro',
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png'),
    CategoryPartModel(
        etext: 'yellow',
        jtext: 'Ki iro',
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png'),
    CategoryPartModel(
        etext: 'dusty yellow',
        jtext: 'kosa',
        sound: 'sounds/colors/dusty_yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Colors",
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: categoryPartModel.length,
          itemBuilder: (context, index) {
            return CategoryPart(categoryPartModel: categoryPartModel[index]);
          }),
    );
  }
}
