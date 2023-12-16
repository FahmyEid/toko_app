import 'package:flutter/material.dart';
import 'package:toko/models/category_part_model.dart';
import 'package:toko/widget/category_part_widget.dart';

class FamilyMemberView extends StatelessWidget {
  FamilyMemberView({super.key});
  final List<CategoryPartModel> categoryPartModel = [
    CategoryPartModel(
        etext: 'Father',
        jtext: 'chichi',
        image: 'assets/images/family_members/family_father.png',
        sound: 'sounds/family_members/father.wav'),
    CategoryPartModel(
        etext: 'Mother',
        jtext: 'haha',
        image: 'assets/images/family_members/family_mother.png',
        sound: 'sounds/family_members/mother.wav'),
    CategoryPartModel(
        etext: 'Grandfather',
        jtext: 'sofu',
        image: 'assets/images/family_members/family_grandfather.png',
        sound: 'sounds/family_members/grand_father.wav'),
    CategoryPartModel(
        etext: 'Grandmother',
        jtext: 'sobo',
        image: 'assets/images/family_members/family_grandmother.png',
        sound: 'sounds/family_members/grand_mother.wav'),
    CategoryPartModel(
        etext: 'Older brother',
        jtext: 'ani',
        image: 'assets/images/family_members/family_older_brother.png',
        sound: 'sounds/family_members/older_bother.wav'),
    CategoryPartModel(
        etext: 'Older sister',
        jtext: 'ane',
        image: 'assets/images/family_members/family_older_sister.png',
        sound: 'sounds/family_members/older_sister.wav'),
    CategoryPartModel(
        etext: 'Son',
        jtext: 'ani',
        image: 'assets/images/family_members/family_son.png',
        sound: 'sounds/family_members/son.wav'),
    CategoryPartModel(
        etext: 'Daughter',
        jtext: 'musume',
        image: 'assets/images/family_members/family_daughter.png',
        sound: 'sounds/family_members/daughter.wav'),
    CategoryPartModel(
        etext: 'Younger brother',
        jtext: 'otooto',
        image: 'assets/images/family_members/family_younger_brother.png',
        sound: 'sounds/family_members/younger_brohter.wav'),
    CategoryPartModel(
        etext: 'Younger sister',
        jtext: 'imooto',
        image: 'assets/images/family_members/family_younger_sister.png',
        sound: 'sounds/family_members/younger_sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Family Member",
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.greenAccent,
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
