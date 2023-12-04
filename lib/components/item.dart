import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/number_model.dart';

class Item extends StatelessWidget {
  const Item({Key? key,required this.item,required this.color}) : super(key: key);
final ItemModel item;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: Color(0xffFFF6DC),
              child: Image.asset(item.image,)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( item.jpName,style: TextStyle(fontSize: 20,color: Colors.white),),
                Text(item.enName,style: TextStyle(fontSize: 20,color: Colors.white),),

              ],
            ),
          ),
          Spacer(flex: 1,),
           Padding(
            padding:const EdgeInsets.only(right: 16),
            child: IconButton(onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource(item.play));
            },
              icon: const Icon(Icons.play_arrow,color: Colors.white,size: 30,),),
          ),
        ],
      ),
    );
  }
}
