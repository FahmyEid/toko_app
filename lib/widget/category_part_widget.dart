import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toko/models/category_part_model.dart';

class CategoryPart extends StatelessWidget {
  const CategoryPart({
    super.key,
    required this.categoryPartModel,
  });
  final CategoryPartModel categoryPartModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(8)),
      height: 70,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage(categoryPartModel.image),
                      fit: BoxFit.fill)),
              height: 70,
              width: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryPartModel.etext,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  categoryPartModel.jtext,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
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
                  player.play(AssetSource(categoryPartModel.sound));
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
