import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import '../models/number_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<ItemModel>numbers= const[
    ItemModel(image: 'assets/images/numbers/number_one.png',
        play:'sound/numbers/number_one_sound.mp3',jpName: 'ichi', enName: 'one'),
    ItemModel(image: 'assets/images/numbers/number_two.png',
        play:'sound/numbers/number_two_sound.mp3',jpName: 'Ni', enName: 'Two'),
    ItemModel(image: 'assets/images/numbers/number_three.png',
        play:'sound/numbers/number_three_sound.mp3',jpName: 'San', enName: 'Three'),
    ItemModel(image: 'assets/images/numbers/number_four.png',
        play:'sound/numbers/number_four_sound.mp3',jpName: 'Shi', enName: 'Four'),
    ItemModel(image: 'assets/images/numbers/number_five.png',
        play:'sound/numbers/number_five_sound.mp3',jpName: 'Go', enName: 'Five'),
    ItemModel(image: 'assets/images/numbers/number_six.png',
        play:'sound/numbers/number_six_sound.mp3',jpName: 'Rok', enName: 'Six'),
    ItemModel(image: 'assets/images/numbers/number_seven.png',
        play:'sound/numbers/number_seven_sound.mp3',jpName: 'Seben', enName: 'seven'),
    ItemModel(image: 'assets/images/numbers/number_eight.png',
        play:'sound/numbers/number_eight_sound.mp3',jpName: 'hachi', enName: 'eight'),
    ItemModel(image: 'assets/images/numbers/number_nine.png',
        play:'sound/numbers/number_nine_sound.mp3',jpName: 'Kyu', enName: 'nine'),
    ItemModel(image: 'assets/images/numbers/number_ten.png',
        play:'sound/numbers/number_ten_sound.mp3',jpName: 'Ju', enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor:Color(0xff46322B) ,
        title: Text('Numbers'),),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context,index){
          return Item(item: numbers[index],color:Color(0xffEF9235),);
        },
      ),
    );
  }
}


