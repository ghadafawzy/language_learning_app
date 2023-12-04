import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import '../models/number_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel>familyMember= const[
    ItemModel(image: 'assets/images/family_member/family_father.png',
        play:'sound/family_member/father.wav',jpName: 'Chichioya', enName: 'father'),
    ItemModel(image: 'assets/images/family_member/family_mother.png',
        play:'sound/family_member/mother.wav',jpName: 'Hahaoya', enName: 'mother'),
    ItemModel(image: 'assets/images/family_member/family_grandfather.png',
        play:'sound/family_member/grand father.wav',jpName: 'Ojisan', enName: 'grandfather'),
    ItemModel(image: 'assets/images/family_member/family_grandmother.png',
        play:'sound/family_member/grand mother.wav',jpName: 'Sobo', enName: 'grandmother'),
    ItemModel(image: 'assets/images/family_member/family_daughter.png',
        play:'sound/family_member/daughter.wav',jpName: 'musume', enName: 'daughter'),
    ItemModel(image: 'assets/images/family_member/family_son.png',
        play:'sound/family_member/son.wav',jpName: 'musuko', enName: 'son'),
    ItemModel(image: 'assets/images/family_member/family_older_brother.png',
        play:'sound/family_member/older bother.wav',jpName: 'Nisan', enName: 'older brother'),
    ItemModel(image: 'assets/images/family_member/family_older_sister.png',
        play:'sound/family_member/older sister.wav',jpName: 'Ane', enName: 'older sister'),
    ItemModel(image: 'assets/images/family_member/family_younger_brother.png',
        play:'sound/family_member/younger brohter.wav',jpName: 'Kyu', enName: 'younger brother'),
    ItemModel(image: 'assets/images/family_member/family_younger_sister.png',
        play:'sound/family_member/younger sister.wav',jpName: 'Ju', enName: 'younger sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor:Color(0xff46322B) ,
        title: Text('Family Members'),),
      body: ListView.builder(
        itemCount: familyMember.length,
        itemBuilder: (context,index){
          return Item(item:familyMember[index],color:Color(0xff558B37),);
        },
      ),
    );
  }
}


