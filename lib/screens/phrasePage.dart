import 'package:flutter/material.dart';
import 'package:language_learning_app/components/phraseItem.dart';
import '../models/number_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<PhraseModel>phrases= const[
    PhraseModel(play:'sound/phrase/dont_forget_to_subscribe.wav',
        jpName: 'Kodoku suru koto o wasurenaide kudasai ', enName: 'dont forget to subscribe'),
    PhraseModel( play:'sound/phrase/i_love_programming.wav',
        jpName: 'Watashi wa puroguramingu ga daisukidesu', enName: 'i love programming'),
    PhraseModel( play:'sound/phrase/programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu', enName: 'programming is easy'),
    PhraseModel( play:'sound/phrase/where_are_you_going.wav',
        jpName: 'Doko ni iku no ', enName: 'where are you going'),
    PhraseModel( play:'sound/phrase/what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka', enName: 'what is your name?'),
    PhraseModel( play:'sound/phrase/i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu', enName: 'i love anime'),
    PhraseModel( play:'sound/phrase/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka', enName: 'how are you feeling?'),
    PhraseModel( play:'sound/phrase/are_you_coming.wav',
        jpName: 'Kimasu ka', enName: 'are you coming?'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor:Color(0xff46322B) ,
        title: Text('Phrases'),),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context,index){
          return ItemPhrase(phrase: phrases[index],color:Color(0xff50ADC7),);
        },
      ),
    );
  }
}


