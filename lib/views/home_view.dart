import 'package:flutter/material.dart';
import 'package:toko/models/category_model.dart';
import 'package:toko/views/color_view.dart';
import 'package:toko/views/family_member_view.dart';
import 'package:toko/views/number_view.dart';
import 'package:toko/views/phrases_view.dart';
import 'package:toko/widget/category_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categoryModel = [
      CategoryModel(
          text: "Number",
          image: 'assets/images/number.jpeg',
          color: Colors.blue,
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NumberView()));
          }),
      CategoryModel(
          text: "Family Member",
          image: "assets/images/family.jpeg",
          color: Colors.greenAccent,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FamilyMemberView()));
          }),
      CategoryModel(
          text: "Colors",
          image: "assets/images/color.jpeg",
          color: Colors.pink,
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ColorView()));
          }),
      CategoryModel(
          text: "Phrases",
          image: "assets/images/phrases.jpeg",
          color: Colors.grey,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhrasesView()));
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Toko",
          style: TextStyle(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: ListView(
        children: categoryModel
            .map((category) => CategoryTitle(
                  categoryModel: category,
                ))
            .toList(),
      ),
    );
  }
}
