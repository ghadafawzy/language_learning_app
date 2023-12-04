import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/number_model.dart';

class ItemPhrase extends StatelessWidget {
  const ItemPhrase({Key? key,required this.phrase,required this.color}) : super(key: key);
  final PhraseModel phrase;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( phrase.jpName,style: TextStyle(fontSize: 15,color: Colors.white),),
                Text(phrase.enName,style: TextStyle(fontSize: 20,color: Colors.white),),

              ],
            ),
          ),
          Spacer(flex: 1,),
          Padding(
            padding:const EdgeInsets.only(right: 16),
            child: IconButton(onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource(phrase.play));
            },
              icon: const Icon(Icons.play_arrow,color: Colors.white,size: 30,),),
          ),
        ],
      ),
    );
  }
}
