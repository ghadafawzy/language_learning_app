import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import '../models/number_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<ItemModel>colors= const[
    ItemModel(image: 'assets/images/colors/brown_one.png',
        play:'sound/color/brown.wav',jpName: 'ichi', enName: 'brown'),
    ItemModel(image: 'assets/images/colors/dusty_yellow.png',
        play:'assets/sound/color/dusty yellow.wav',jpName: 'Ni', enName: 'dusty yellow'),
    ItemModel(image: 'assets/images/colors/grey.png',
        play:'sound/color/grey.wav',jpName: 'San', enName: 'grey'),
    ItemModel(image: 'assets/images/colors/green.png',
        play:'sound/color/green.wav',jpName: 'Shi', enName: 'green'),
    ItemModel(image: 'assets/images/colors/black.png',
        play:'sound/color/toku_assets_sounds_colors_black.wav',jpName: 'Go', enName: 'black'),
    ItemModel(image: 'assets/images/colors/white.png',
        play:'sound/color/green.wav',jpName: 'Rok', enName: 'white'),
    ItemModel(image: 'assets/images/colors/yellow.png',
        play:'sound/color/yellow.wav',jpName: 'Seben', enName: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor:Color(0xff46322B) ,
        title: Text('Color'),),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context,index){
          return Item(item: colors[index],color:Color(0xff79359F),);
        },
      ),
    );
  }
}


