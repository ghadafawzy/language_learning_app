import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/colorPage.dart';
import 'package:language_learning_app/screens/family_member.dart';
import 'package:language_learning_app/screens/numberPage.dart';
import 'package:language_learning_app/screens/phrasePage.dart';
import '../components/categoryItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor:Color(0xff46322B) ,
        title: Text('Toku'),),
      body: Column(
        children: [
          Category(color:Color(0xffEF9235),text: 'Members',
            ontap: (){Navigator.push(context,
                MaterialPageRoute(builder:(context){return NumbersPage(); })
            );
            },
          ),
          Category(color:Color(0xff558B37),text:'FamilyMembers',
            ontap: (){Navigator.push(context,
                MaterialPageRoute(builder:(context){return FamilyMembersPage(); })
            );
            },
          ),
          Category(color:Color(0xff79359F),text:'Colors',
            ontap: (){Navigator.push(context,
                MaterialPageRoute(builder:(context){return ColorsPage(); })
            );
            },
          ),
          Category(color:Color(0xff50ADC7),text:'Phrases',
            ontap: (){Navigator.push(context,
                MaterialPageRoute(builder:(context){return PhrasesPage(); })
            );
            },
          ),
        ],
      ),
    );
  }
}
