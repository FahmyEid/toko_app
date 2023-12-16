import 'package:flutter/material.dart';
import 'package:toko/models/category_part_model.dart';
import 'package:toko/widget/category_part_widget.dart';

class NumberView extends StatelessWidget {
  NumberView({super.key});
  final List<CategoryPartModel> categoryPartModel = [
    CategoryPartModel(
      etext: "one",
      jtext: "Ichi",
      image: 'assets/images/numbers/number_one.png',
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    CategoryPartModel(
      etext: "two",
      jtext: "Ni",
      image: 'assets/images/numbers/number_two.png',
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    CategoryPartModel(
      etext: "three",
      jtext: "San",
      image: 'assets/images/numbers/number_three.png',
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    CategoryPartModel(
      etext: "four",
      jtext: "Shi",
      image: 'assets/images/numbers/number_four.png',
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    CategoryPartModel(
      etext: "five",
      jtext: "Go",
      image: 'assets/images/numbers/number_five.png',
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    CategoryPartModel(
      etext: "six",
      jtext: "Roku",
      image: 'assets/images/numbers/number_six.png',
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    CategoryPartModel(
      etext: "seven",
      jtext: "Sebun",
      image: 'assets/images/numbers/number_seven.png',
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    CategoryPartModel(
      etext: "eight",
      jtext: "hachi",
      image: 'assets/images/numbers/number_eight.png',
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    CategoryPartModel(
      etext: "nine",
      jtext: "Kyu",
      image: 'assets/images/numbers/number_nine.png',
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    CategoryPartModel(
      etext: "ten",
      jtext: "juu",
      image: 'assets/images/numbers/number_ten.png',
      sound: "sounds/numbers/number_ten_sound.mp3",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Number",
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.blue,
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
