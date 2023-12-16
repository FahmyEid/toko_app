import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toko/models/phrases_model.dart';

class PhrasesCategoryWidget extends StatelessWidget {
  const PhrasesCategoryWidget({
    super.key,
    required this.phrasesModel,
  });
  final PhrasesModel phrasesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(8)),
      height: 70,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrasesModel.etext,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  phrasesModel.jtext,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, bottom: 5),
            child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  player.play(AssetSource(phrasesModel.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 40,
                )),
          )
        ],
      ),
    );
  }
}
