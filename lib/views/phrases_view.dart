import 'package:flutter/material.dart';
import 'package:toko/models/phrases_model.dart';
import 'package:toko/widget/phrases_category_widget.dart';

class PhrasesView extends StatelessWidget {
  PhrasesView({super.key});
  final List<PhrasesModel> phrasesModel = [
    PhrasesModel(
        etext: 'are you coming',
        jtext: 'Kimasu ka',
        sound: 'sounds/phrases/are_you_coming.wav'),
    PhrasesModel(
        etext: 'dont forget to subscribe',
        jtext: 'Kodoku suru koto o wasurenaide kudassai',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    PhrasesModel(
        etext: 'how are you feeling',
        jtext: 'Go kibun wa ikagadesu ka',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    PhrasesModel(
        etext: 'i love anime',
        jtext: 'Watashi wa anime ga daisukidesu',
        sound: 'sounds/phrases/i_love_anime.wav'),
    PhrasesModel(
        etext: 'i love programming',
        jtext: 'Watashi wa puroguramingu godaisukidesu',
        sound: 'sounds/phrases/i_love_programming.wav'),
    PhrasesModel(
        etext: 'programming is easy',
        jtext: 'Puroguramingu wa kantandesu',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    PhrasesModel(
        etext: 'what is your name',
        jtext: 'Nanae wa nandesu ka',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    PhrasesModel(
        etext: 'where are you going',
        jtext: ' Doko ni iku no',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    PhrasesModel(
        etext: 'yes im coming',
        jtext: 'Hai, kimasu',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Phrases",
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: phrasesModel.length,
          itemBuilder: (context, index) {
            return PhrasesCategoryWidget(phrasesModel: phrasesModel[index]);
          }),
    );
  }
}
